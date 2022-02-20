.ONESHELL:

setup-venv:
	python3 -m venv venv
	. venv/bin/activate
	pip install -r requirements.txt

test: unit-test integration-test

unit-test:
	. venv/bin/activate
	pytest src/unit-test.py

integration-test:
	. venv/bin/activate
	pytest src/integration-test.py
