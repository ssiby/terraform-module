.PHONY: lint-tf
check-tf-lint:
	@echo ">> checking terraform format"
	@terraform fmt -check -list

.PHONY: check-docs
check-docs: docs
	@echo ">> checking documentation"
	@git diff --name-only --exit-code README.md

.PHONY: check
check: check-tf-lint check-docs

.PHONY: fmt-tf
fmt-tf:
	@echo ">> formatting terraform"
	@terraform fmt

.PHONY: fmt
fmt: fmt-tf

.PHONY: docs
docs:
	@echo ">> building terraform module docs"
	@terraform-docs --sort-by-required md . > README.md
