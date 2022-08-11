#!/bin/bash

set -ex

source $(dirname "$0")/env_setup.sh

setup_build_env
install_cloud

cd cloud/
python3 -m pytest --junitxml=results.xml tests/unittests/test_cloud_predictor.py
