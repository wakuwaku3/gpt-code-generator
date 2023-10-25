.PHONY: install
install:
	poetry config virtualenvs.in-project true --local
	poetry install

.PHONY: run-save
.SILENT:
run-save:
	poetry run save-precondition

.PHONY: run-review
.SILENT:
run-review:
	poetry run gpt-code-generator

.PHONY: build
build:
	poetry build

.PHONY: lint
lint:check lint-isort lint-black lint-pflake8 lint-mypy lint-pylint

.PHONY: check
check:
	poetry check

.PHONY: lint-isort
lint-isort:
	poetry run isort . --check-only

.PHONY: lint-black
lint-black:
	poetry run black . --check

.PHONY: lint-pflake8
lint-pflake8:
	poetry run pflake8

.PHONY: lint-mypy
lint-mypy:
	poetry run mypy

.PHONY: lint-pylint
lint-pylint:
	poetry run pylint ./gpt_code_generator/**

.PHONY: test
test:
	poetry run pytest

.PHONY: publish
publish:
	poetry publish
