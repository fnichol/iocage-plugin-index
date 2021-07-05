CHECK_TOOLS += jsonschema
MANIFEST_SOURCES ?= $(shell find . -type f -name '*.json' -maxdepth 1 -and -not -path './INDEX.json')

include vendor/mk/base.mk
include vendor/mk/json.mk

build:
.PHONY: build

test: ## Runs all tests
.PHONY: test

check: checktools check-json check-index check-manifests ## Checks all linting, styling, & other rules
.PHONY: check

clean: ## Cleans up project
	@echo "--- $@"
	rm -rf tmp
.PHONY: clean

check-index: tmp/index.schema.json ### Checks the plugin index
	@echo "--- $@"
	jsonschema -i ./INDEX $<
.PHONY: check-index

check-manifests: tmp/plugin_manifest.schema.json ### Checks the plugin index
	@echo "--- $@"
	for manifest in $(MANIFEST_SOURCES); do \
		echo "  - $$manifest"; jsonschema -i "$$manifest" $<; \
	done
.PHONY: check-manifests

tmp/index.schema.json:
	@echo "--- $@"
	mkdir -p $$(dirname $@)
	curl -sSfL https://raw.githubusercontent.com/ix-plugin-hub/iocage-plugin-index/master/index.schema -o $@

tmp/plugin_manifest.schema.json:
	@echo "--- $@"
	mkdir -p $$(dirname $@)
	curl -sSfL https://raw.githubusercontent.com/iocage/iocage/master/iocage_lib/plugin_manifest.json -o $@
