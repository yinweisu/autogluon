#!/bin/bash

set -ex

ADDITIONAL_TEST_ARGS=$1

source $(dirname "$0")/env_setup.sh

setup_build_env
install_cloud

cd cloud/
python3 -m pytest -n 2 --junitxml=results.xml "$ADDITIONAL_TEST_ARGS" tests/unittests/test_cloud_predictor.py
