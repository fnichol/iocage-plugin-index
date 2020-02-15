include vendor/mk/base.mk

build:
.PHONY: build

test: ## Runs all tests
.PHONY: test

check: check-json ## Checks all linting, styling, & other rules
.PHONY: check

clean: ## Cleans up project
.PHONY: clean

JSON_SOURCES := $(shell find . -name '*.json' -not -path './tmp/*' -and -not -path './vendor/*')
CHECK_TOOLS += jq

check-json: checktools
	@echo "--- $@"
	@for json in $(JSON_SOURCES); do echo "  - $$json"; jq empty "$$json"; done
.PHONY: check-json
