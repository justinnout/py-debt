.PHONY: development
development: virtualenv_run install-hooks

.PHONY: virtualenv_run
virtualenv_run:
	python -m venv virtualenv_run
	virtualenv_run/bin/pip install --upgrade pip setuptools wheel
	virtualenv_run/bin/pip install -r requirements.txt
	virtualenv_run/bin/pip install pre-commit

.PHONY: install-hooks
install-hooks: virtualenv_run
	./virtualenv_run/bin/pre-commit install -f --install-hooks

.PHONY: clean
clean: clean-cache
	rm -rf virtualenv_run/
	rm -rf .virtualenv_run_dev_test/
	rm -rf .pytest_cache/
	rm -rf .tox/

.PHONY: test
test:
	tox
