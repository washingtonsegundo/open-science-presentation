SHELL := /bin/zsh
TECTONIC ?= tectonic
OUTDIR := build
MAIN := main.tex
export TECTONIC_CACHE_DIR := $(CURDIR)/.cache/tectonic

.PHONY: setup doctor pdf watch clean

setup:
	./scripts/setup.sh

doctor:
	./scripts/doctor.sh

pdf:
	./scripts/compile.sh

watch:
	./scripts/watch.sh

clean:
	@mkdir -p "$(OUTDIR)"
	@find "$(OUTDIR)" -type f ! -name 'main.pdf' -delete
	@echo "Auxiliary files removed; build/main.pdf was preserved."
