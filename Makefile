# Purpose: Makefile for creating the summary of the source code
# Creator: Stas German
# Date: 2024-08-04
install:
	pip3 install -r requirements.txt

diff:
	git diff --patch-with-raw --raw --minimal --compact-summary origin/master HEAD > diff.txt

summary:
	python3 summary.py diff.txt

lint:
	pylint *.py

test:
	python3 -m unittest test_summary.py