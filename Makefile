data: data/raw/trees/Birch/birch_13.las
data/raw/trees/Birch/birch_13.las:
	poetry run kaggle datasets download -p data --unzip sentinel3734/uav-point-clouds-of-individual-trees

setup-python:
	poetry install --no-root
	poetry run ipython kernel install --user \
	 --name "igarss2024" \
	 --display-name "IGARSS 2024"

teardown-python:
	jupyter kernelspec remove "igarss2024" -y
	poetry env remove --all
