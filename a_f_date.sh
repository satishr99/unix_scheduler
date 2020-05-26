#!/bin/bash


#-- common path setup and common functions
source ./a_f_common.sh

#-----------------------------------------------------------------------------------------
#-- This function returns the day of the week using current date, 1-mon ....7-sun
#-- ${1} - na
#-- returns values between 1-7
#-----------------------------------------------------------------------------------------
function CheckDow() {
  local dow
  dow=$( date '+%u' )  #- day of week is 1-mon, 2-tue ....7-sun
  echo ${1} | grep ${dow} &> /dev/null
  if [[ $? -ne 0 ]]; then echo "0"; else echo "1";  fi
}
