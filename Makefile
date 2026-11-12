HUGO_VERSION ?= 0.167.0
HUGO_IMAGE   ?= ghcr.io/gohugoio/hugo:v$(HUGO_VERSION)
DOCKER       ?= docker
PORT         ?= 1313

# Allocate a TTY in dev (for ctrl+c) but not in CI
TTY := $(if $(CI),,-it)

# Override with HUGO=hugo to use a local Hugo extended instead of the container
HUGO ?= $(DOCKER) run --rm $(TTY) \
	--user $(shell id -u):$(shell id -g) \
	-e HUGO_CACHEDIR=/tmp/hugo_cache \
	-e HUGO_ENVIRONMENT \
	-v $(CURDIR):/project \
	$(if $(filter serve,$(MAKECMDGOALS)),-p 127.0.0.1:$(PORT):$(PORT)) \
	$(HUGO_IMAGE)

.PHONY: help submodules build serve new clean sync

help:
	@echo "make build       build the site into public/ (Hugo $(HUGO_VERSION) in Docker)"
	@echo "make serve       start the dev server on http://localhost:$(PORT)"
	@echo "make new POST=blog/2026-11-11-title.md   create a news post"
	@echo "make clean       remove public/ and resources/_gen/"
	@echo "make sync        clean build, then run ./sync.sh (local only, not in Git)"
	@echo ""
	@echo "Variables: HUGO_VERSION, DOCKER (e.g. podman), PORT, HUGO=hugo (local binary)"

submodules:
	git submodule update --init --recursive

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
