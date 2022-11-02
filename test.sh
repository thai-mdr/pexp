#!/usr/bin/env zsh

# Constants
C_RESET='\e[0m'
C_RED='\e[31m'
C_GREEN='\e[32m'
C_YELLOW='\e[33m'
C_BLUE='\e[34m'
C_MAGENTA='\e[35m'
C_CYAN='\e[36m'
C_WHITE='\e[37m'

C_RESET='\e[0m'
C_RED_L='\e[1;31m'
C_GREEN_L='\e[1;32m'
C_YELLOW_L='\e[1;33m'
C_BLUE_L='\e[1;34m'
C_MAGENTA_L='\e[1;35m'
C_CYAN_L='\e[1;36m'
C_WHITE_L='\e[1;37m'

SCRIPT_DIR=`dirname ${0}`
LOG_DIR="${SCRIPT_DIR}/log"
LOG_STDOUT="${LOG_DIR}/stdout.txt"
LOG_STDERR="${LOG_DIR}/stderr.txt"
LOG_DIFF="${LOG_DIR}/diff.txt"
# /Constants


mkdir -p "${LOG_DIR}"
echo -ne "${C_YELLOW}TEST${C_RESET} ${C_CYAN}${PEXP_TEST_LABEL}${C_RESET}"


# Command execution
$@ > "${LOG_STDOUT}" 2> "${LOG_STDERR}"


# Command return status test
if [[ "$?" -ne 0 ]]
then
  echo -e " ${C_RED}KO${C_RESET}"
  echo -e ${C_MAGENTA}Command failed!${C_RESET}
  echo -e "$@"
  sed "s>${SCRIPT_DIR}/>>" "${LOG_STDERR}"
  echo
  exit 1
fi


# Diff test
if [[ -n "${PEXP_TEST_EXPECTED_OUT}" ]]
then
  diff "${PEXP_TEST_EXPECTED_OUT}" "${LOG_STDOUT}" > "${LOG_DIFF}" 2>> "${LOG_STDERR}"
  STATUS="$?"

  if [[ "$STATUS" -eq 1 ]]
  then
    echo -e " ${C_RED}KO${C_RESET}"
    echo -e ${C_MAGENTA}Result missmatch!${C_RESET}
    echo -e "< Attendu (${PEXP_TEST_EXPECTED_OUT})"
    echo -e "> Obtenu  (${LOG_STDOUT})"
    echo
    cat "${LOG_DIFF}"
    echo
    exit 2
  elif [[ "$STATUS" -eq 2 ]]
  then
    echo -e " ${C_RED}KO${C_RESET}"
    echo -e ${C_MAGENTA}diff exited with status code 2!${C_RESET}
    cat "${LOG_STDERR}"
    echo
    exit 2
  fi
fi


echo -e " ${C_GREEN}OK${C_RESET}"
