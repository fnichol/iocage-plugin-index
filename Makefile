include vendor/mk/base.mk
include vendor/mk/json.mk

build:
.PHONY: build

test: ## Runs all tests
.PHONY: test

check: check-json ## Checks all linting, styling, & other rules
.PHONY: check

clean: ## Cleans up project
.PHONY: clean
