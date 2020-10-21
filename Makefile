lint:
	set -e
	set -x
	flake8 vidoo
format:
	set -e
	isort --force-single-line-imports vidoo tests
	autoflake --recursive --remove-all-unused-imports --remove-unused-variables --in-place vidoo tests
	black vidoo tests
	isort vidoo tests
test:
	pytest --cov=vidoo tests/

