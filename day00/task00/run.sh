#!/usr/bin/env zsh


SCRIPT_DIR=`dirname ${0}`
TEST_SH="${SCRIPT_DIR}/../../test.sh"


export PEXP_TEST_LABEL='Example success'
export PEXP_TEST_EXPECTED_OUT=''
"${TEST_SH}" true

# export PEXP_TEST_LABEL='Example failure'
# "${TEST_SH}" false

# export PEXP_TEST_LABEL='Example command not found'
# "${TEST_SH}" command_that_should_not_be_found

# export PEXP_TEST_LABEL='Example output missmatch'
# export PEXP_TEST_EXPECTED_OUT="${SCRIPT_DIR}/example_output_missmatch.out.txt"
# "${TEST_SH}" echo "Hello World!"

exit 0
