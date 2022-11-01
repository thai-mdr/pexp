#!/usr/bin/env zsh

set -e

SCRIPT_DIR=`dirname ${0}`
TEST_SH="${SCRIPT_DIR}/../../test.sh"


export PSCE_TEST_LABEL='node exists'
${TEST_SH} node -v

export PSCE_TEST_LABEL='npm exists '
${TEST_SH} npm -v

export PSCE_TEST_LABEL='yarn exists'
${TEST_SH} yarn -v
