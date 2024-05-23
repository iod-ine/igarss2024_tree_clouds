data:
	poetry run kaggle datasets download -p data --unzip sentinel3734/uav-point-clouds-of-individual-trees

render:
	poetry run quarto render paper.ipynb --output-dir docs

setup-python:
	poetry install --no-root
	poetry run ipython kernel install --user \
	 --name "igarss2024" \
	 --display-name "IGARSS 2024"

teardown-python:
	jupyter kernelspec remove "igarss2024" -y
	poetry env remove --all
