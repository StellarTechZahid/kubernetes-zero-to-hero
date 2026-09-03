.PHONY: help lint render

help:
	@echo "Available targets: lint, render"

lint:
	@find . -type f \( -name '*.yaml' -o -name '*.yml' \) -not -path './.git/*' -print

render:
	@echo "Render manifests with kubectl/kustomize or helm in the relevant module."
