HUGO_VERSION ?= 0.167.0
PREFIX       ?= $(HOME)/.local/bin
HUGO         ?= $(PREFIX)/hugo
PORT         ?= 1313

ARCH := $(patsubst x86_64,amd64,$(patsubst aarch64,arm64,$(shell uname -m)))
HUGO_URL := https://github.com/gohugoio/hugo/releases/download/v$(HUGO_VERSION)/hugo_extended_$(HUGO_VERSION)_linux-$(ARCH).tar.gz

.PHONY: help install submodules build serve clean sync

help:
	@echo "make install     install Hugo extended $(HUGO_VERSION) to $(PREFIX) (Linux)"
	@echo "make build       build the site into public/"
	@echo "make serve       start the dev server on http://localhost:$(PORT)"
	@echo "make clean       remove public/ and resources/_gen/"
	@echo "make sync        clean build, then run ./sync.sh (local only, not in Git)"

install:
	@if [ "$$($(HUGO) version 2>/dev/null | grep -o 'v[0-9.]*' | head -1)" = "v$(HUGO_VERSION)" ] && $(HUGO) version | grep -q extended; then \
		echo "Hugo $(HUGO_VERSION) extended is already installed in $(HUGO)"; \
	else \
		mkdir -p "$(PREFIX)" && curl -fsSL "$(HUGO_URL)" | tar -xz -C "$(PREFIX)" hugo && $(HUGO) version; \
	fi

submodules:
	git submodule update --init --recursive

build: submodules
	$(HUGO) --gc --minify

serve: submodules
	$(HUGO) server --bind 127.0.0.1 --port $(PORT) --disableFastRender

sync: clean build
	./sync.sh

clean:
	rm -rf public resources/_gen
