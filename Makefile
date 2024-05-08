setup-python:
	poetry install --no-root
	poetry run ipython kernel install --user \
	 --name "igarss2024" \
	 --display-name "IGARSS 2024"

teardown-python:
	jupyter kernelspec remove "igarss2024" -y
	poetry env remove --all
