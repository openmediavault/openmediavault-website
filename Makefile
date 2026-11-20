HUGO_VERSION ?= 0.170.1
HUGO_IMAGE   ?= ghcr.io/gohugoio/hugo:v$(HUGO_VERSION)
CONTAINER_RUNTIME ?= $(shell command -v podman 2>/dev/null || command -v docker 2>/dev/null)
CONTAINER_USERNS := $(if $(filter podman,$(notdir $(CONTAINER_RUNTIME))),--userns=keep-id)
PORT         ?= 1313

# Allocate a TTY in dev (for ctrl+c) but not in CI
TTY := $(if $(CI),,-it)

# Override with HUGO=hugo to use a local Hugo extended instead of the container
HUGO ?= $(if $(CONTAINER_RUNTIME),$(CONTAINER_RUNTIME),$(error Neither podman nor docker was found)) run --rm $(TTY) \
	--user $(shell id -u):$(shell id -g) \
	$(CONTAINER_USERNS) \
	-e HUGO_CACHEDIR=/tmp/hugo_cache \
	-e HUGO_ENVIRONMENT \
	-e TZ=Europe/Berlin \
	-v $(CURDIR):/project \
	$(if $(filter serve,$(MAKECMDGOALS)),-p 127.0.0.1:$(PORT):$(PORT)) \
	$(HUGO_IMAGE)

.PHONY: help submodules update build serve new clean sync

help:
	@echo "make update      update the Blowfish theme to its latest release (shallow); review and commit"
	@echo "make build       build the site into public/ (Hugo $(HUGO_VERSION) in a container)"
	@echo "make serve       start the dev server on http://localhost:$(PORT)"
	@echo "make new POST=blog/2026-11-11-title.md   create a news post"
	@echo "make clean       remove public/ and resources/_gen/"
	@echo "make sync        clean build, then run ./sync.sh (local only, not in Git)"
	@echo ""
	@echo "Variables: HUGO_VERSION, CONTAINER_RUNTIME, PORT, HUGO=hugo (local binary)"

submodules:
	git submodule update --init --recursive --depth 1

update: submodules
	@tag=$$(git ls-remote --tags --refs --sort=-v:refname https://github.com/nunocoracao/blowfish.git 'v*' | sed -n '1s|.*refs/tags/||p'); \
	test -n "$$tag" || { echo "no release tag found"; exit 1; }; \
	echo "Blowfish -> $$tag"; \
	git -C themes/blowfish fetch --depth 1 origin tag $$tag && git -C themes/blowfish checkout -q $$tag
	@git status --short themes/blowfish
	@echo "Hugo is pinned to $(HUGO_VERSION) (HUGO_VERSION in Makefile); check https://github.com/gohugoio/hugo/releases"

build: submodules
	$(HUGO) --gc --minify

serve: submodules
	$(HUGO) server --bind 0.0.0.0 --port $(PORT) --disableFastRender

new:
	@test -n "$(POST)" || { echo "usage: make new POST=blog/2026-11-11-title.md"; exit 1; }
	$(HUGO) new --kind blog $(POST)

sync: clean build
	./sync.sh

clean:
	rm -rf public resources/_gen
