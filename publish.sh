#!/bin/bash

function install_build_tools() {
  pip install --upgrade pip
  #  pip install --upgrade awscli
  pip install --upgrade setuptools wheel
  pip install --upgrade twine
}

function publish() {
  python setup.py sdist
  twine upload dist/*
}

function build_distributed() {
  python3 setup.py clean
  python3 setup.py sdist bdist_wheel
}

install_build_tools
build_distributed
publish