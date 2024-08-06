#!/bin/sh

SCRIPT_PATH=$(dirname "$(readlink -f "$0")")

pipx install $SCRIPT_PATH
# Activate the pipx environment for guake
pipx inject guake pbr
pipx inject guake wheel
pipx inject guake typing
pipx inject guake pyyaml

# Inject dev-packages into the pipx environment for guake
pipx inject guake autopep8
pipx inject guake flake8
pipx inject guake pep8
pipx inject guake pylint
pipx inject guake typed-ast
pipx inject guake astroid
pipx inject guake fiximports
pipx inject guake mock
pipx inject guake pytest-mock
pipx inject guake pyflakes
pipx inject guake pytest
pipx inject guake yapf
pipx inject guake reno
pipx inject guake pipenv-to-requirements
pipx inject guake colorlog
pipx inject guake sphinx-rtd-theme
pipx inject guake sphinxcontrib-programoutput
pipx inject guake twine
pipx inject guake pathlib2
pipx inject guake pyfakefs
pipx inject guake pytest-cov
pipx inject guake pew
pipx inject guake black
pipx inject guake flakehell
pipx inject guake toml
pipx inject guake pre-commit

# For any package with specific version requirements or markers, specify them directly
pipx inject guake 'flake8>=3.8.0,<4.0.0'
pipx inject guake 'fiximports>=0.1.18'
pipx inject guake 'mock>=2.0.0'
pipx inject guake 'reno>=2.8.0[sphinx]'
pipx inject guake 'black==21.8b0'
pipx inject guake 'pre-commit==2.17.0'
pipx inject guake 'scandir; python_version > "3.5"'
pipx inject guake 'typing; python_version > "3.5"'
pipx inject guake pygobject pyyaml dbus-python
