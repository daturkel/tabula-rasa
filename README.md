# Tabula Rasa

## Boilerplate for Python projects

### What's here and why?

```
├── Dockerfile
├── README.md
├── mypy.ini
├── package
│   ├── __init__.py
│   ├── my_script.py
│   └── tests
│       └── test_test.py
├── poetry.lock
├── pyproject.toml
├── requirements.txt
├── requirements_dev.txt
├── scripts
│   ├── docker_bash.sh
│   ├── docker_build.sh
│   └── poetry_reqs.sh
├── setup.py
└── tox.ini
```

#### Python project scaffolding

This repo is set up for a hypothetical Python package called `package`.

`pyproject.toml` sets up the package to be managed by [Poetry](https://python-poetry.org/). See [PEP518](https://www.python.org/dev/peps/pep-0518/) and [this article](https://snarky.ca/what-the-heck-is-pyproject-toml/) for more info about `pyproject.toml` files.

`setup.py` is a shim to allow the package to be installed in editable mode (`pip install -e .`) for development. Non-editable installs will use `pyproject.toml` to build the package instead.

The `package` directory contains an `__init__.py` file with the version number and a tests directory as well as a sample script. The sample script becomes a CLI tool upon install thanks to `pyproject.toml`. 

The `package/tests` directory contains a trivial test to be run by [Pytest](https://docs.pytest.org/en/stable/).

#### Type checking

Type checking with [mypy](https://mypy.readthedocs.io/en/stable/) is configured via `mypy.ini`. Mypy is listed as a dev dependency.

#### Formatting

Code formatting with is handled by [Black](https://github.com/psf/black), which is listed as a dev dependency.

#### Testing

Testing with [Pytest](https://docs.pytest.org/en/stable/) is configured in `pyproject.toml`. Tests, formatting, and type-checking can all be run with [Tox](https://tox.readthedocs.io/en/latest/), which is configured in `tox.ini`.

#### Version bumping

Version bumping is handled by [bump2version](https://github.com/c4urself/bump2version) and is configured in `.bumpversion.cfg`. Bumping the version affects both `__init__.py` and `pyproject.toml`.

#### Docker

The `Dockerfile` specifies a simple Docker image with the package's dependencies.

#### Scripts

The `scripts` directory has shell scripts for building the Docker image, opening a shell inside the image, and dumping the Poetry-specified requirements to a `requirements.txt` and `requirements_dev.txt` file.

### Making it your own

The sample name "package" is used in three of the files:

- `pyproject.toml` lines 2, 18, and 22
- `scripts/docker_bash.sh` line 1
- `scripts/docker_build.sh` line 1

Replace this name with whatever your package is called.

### Credits

Some of the practices in this template were inspired by Train in Data's excellent ["Testing and Monitoring ML Deployments"](https://data-science-academy3.teachable.com/) course. See [the course's Github repo](https://github.com/trainindata/testing-and-monitoring-ml-deployments).
