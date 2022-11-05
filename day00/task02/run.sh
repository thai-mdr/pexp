#!/usr/bin/env zsh

set -e

SCRIPT_DIR=`dirname ${0}`
TEST_SH="${SCRIPT_DIR}/../../test.sh"


export PEXP_TEST_LABEL='GET /hello_world'
export PEXP_TEST_EXPECTED_OUT="${SCRIPT_DIR}/hello_world.out.txt"
${TEST_SH} curl localhost:3000/hello_world
