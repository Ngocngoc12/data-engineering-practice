# Git Pre-commit Guard

## Overview

Git Pre-commit Guard is a personal learning project created to practice Git, Python testing, code quality tools, and GitHub Actions.

The purpose of this project is to understand how automated code checks can help maintain clean and consistent code before changes are committed and pushed to a repository.

## What This Project Does

Before each commit, Git automatically runs a set of checks using pre-commit hooks:

* Black for code formatting
* isort for import sorting
* Flake8 for style checking

After code is pushed to GitHub, GitHub Actions automatically runs:

* Black validation
* isort validation
* Flake8 validation
* Pytest unit tests

This helps ensure that code follows consistent standards and that tests pass before changes are merged.

## Technologies Used

* Python 3.12
* Git
* Pytest
* Black
* Flake8
* isort
* pre-commit
* GitHub Actions

## Project Structure

```text
git-precommit-guard/
├── app/
│   ├── __init__.py
│   └── calculator.py
│
├── tests/
│   └── test_calculator.py
│
├── .github/
│   └── workflows/
│       └── ci.yml
│
├── .pre-commit-config.yaml
├── pytest.ini
├── requirements.txt
├── .gitignore
└── README.md
```

## Installation

Create a virtual environment:

```bash
python3 -m venv venv
source venv/bin/activate
```

Install dependencies:

```bash
pip install -r requirements.txt
```

Install pre-commit hooks:

```bash
pre-commit install
```

## Running Tests

```bash
pytest
```

## Learning Objectives

This project was created to practice:

* Git version control
* Python project structure
* Unit testing with Pytest
* Automated code formatting
* Static code analysis
* Pre-commit hooks
* Continuous Integration with GitHub Actions

## Status

Completed as a personal learning project.
