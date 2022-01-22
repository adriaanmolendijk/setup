setup-venv:
	python3 -m venv venv
	. venv/bin/activate
	pip install -r requirements.txt

test: unit-test integration-test

unit-test:
	pytest src/unit-test.py

integration-test:
	pytest src/integration-test.py
