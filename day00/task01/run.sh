#!/usr/bin/env zsh

set -e

SCRIPT_DIR=`dirname ${0}`
TEST_SH="${SCRIPT_DIR}/../../test.sh"


export PEXP_TEST_LABEL='node exists'
${TEST_SH} node --version

export PEXP_TEST_LABEL=' npm exists'
${TEST_SH} npm --version

export PEXP_TEST_LABEL='yarn exists'
${TEST_SH} yarn --version

export PEXP_TEST_LABEL='curl exists'
${TEST_SH} curl --version
