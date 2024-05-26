.PHONY: all
all: clean fmt check-lint

.PHONY: clean
clean:
	@rm -rf build dist *.egg-info .coverage .coverage.* .eggs .mypy_cache .pytest_cache .ruff_cache
	@find . -type f -name "*.pyc" -delete
	@find . -type d -name "__pycache__" | xargs rm -rf

.PHONY: fix-lint
fix-lint:
	@poetry run ruff check --fix .

.PHONY: fmt
fmt:
	@poetry run ruff format .

.PHONY: check-lint
check-lint: check-ruff-lint typecheck

.PHONY: check-ruff-lint
check-ruff-lint:
	@poetry run ruff check .

.PHONY: typecheck
typecheck:
	@poetry run mypy --install-types --non-interactive discvar

.PHONY: pre-commit
pre-commit:
	@poetry run pre-commit

.PHONY: pre-commit-all
pre-commit-all:
	@poetry run pre-commit run --all-files
