[![unittest-poetry](https://github.com/KenHino/Discvar/actions/workflows/unittest-poetry.yml/badge.svg?branch=main)](https://github.com/KenHino/Discvar/actions/workflows/unittest-poetry.yml)
![Static Badge](https://img.shields.io/badge/Version-v0.0.0-brightgreen)

# Discvar

Discvar is a Python library for discrete variable representation (DVR)

## Documentation

https://kenhino.github.io/Discvar/

## Installation

Clone this repository to your local environment;

```bash
$ git clone https://github.com/KenHino/Discvar.git
$ cd Discvar
```

Before installation, please make sure you have the following requirements:

- Python 3.10 or later
  If you don't have Python, you can install it by e.g. [pyenv](https://github.com/pyenv/pyenv?tab=readme-ov-file#installation).
  ```bash
  $ pyenv install $(cat .python-version)
  ```

- [pipx](https://github.com/pypa/pipx)
  > pip is a general-purpose package installer for both libraries and apps with no environment isolation. pipx is made specifically for application installation, as it adds isolation yet still makes the apps available in your shell: pipx creates an isolated environment for each application and its associated packages.

- [poetry](https://python-poetry.org/)
  ```bash
  $ pipx install poetry==$(cat .poetry-version)
  ```

Install by poetry;
```bash
$ poetry install --with dev
```
If you need only minimum requirements, remove `--with dev`. If you want to install documentation, change it to `--with dev,docs`.

Then, you can use Discvar by
```bash
$ poetry run python xxx.py
```
or
```bash
$ poetry shell
$ python
>>> import discvar
$ exit
```

### F.Y.I.,

`pytest` is also installed by `poetry install --with dev`.
```bash
$ poetry run pytest
```


### For developers,

you should install pre-commit hooks.
```bash
$ poetry run pre-commit install
$ git add .
$ poetry run pre-commit
```
Before push you must fix problems!!

```bash
$ make
```
also support you.
