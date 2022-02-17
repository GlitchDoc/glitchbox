#!/bin/bash

#Colours
red="\033[00;31m"
RED="\033[01;31m"

green="\033[00;32m"
GREEN="\033[01;32m"

brown="\033[00;33m"
YELLOW="\033[01;33m"

blue="\033[00;34m"
BLUE="\033[01;34m"

purple="\033[00;35m"
PURPLE="\033[01;35m"

cyan="\033[00;36m"
CYAN="\033[01;36m"

white="\033[00;37m"
WHITE="\033[01;37m"

NC="\033[00m"

echo -e "${RED}                 .-^^^--._       __        __       _.--^^^-.           "
echo -e "${RED}               .^\        '-._   ^.^-.--.-^.^   _.-'        /^.         "
echo -e "${RED}              /\  ^.          ^    \/    \/    ^          .^  /\        "
echo -e "${RED}             /  ^.  ^-._       '.  ( @  @ )  .'       _.-^  .^  \       "
echo -e "${RED}            /_.-^       ^^--._   \ /\ .. /\ /   _.--^^       ^-._\      "
echo -e "${RED}           /     .-^^^---..__ ^-._:  ^--^  :_.-^ __..---^^^-.     \     "
echo -e "${RED}           \   ,^            ^-._      D     _.-^            ^.   /     "
echo -e "${RED}            ^._\                 ^.________.^                 /_.^      "
echo -e "${RED}                                 .'        '.                           "
echo -e "${RED}        ________________________/____________\_________________________ "
echo -e "${RED}******************************************************************************"
echo -e "${RED}**                                                                          **"
echo -e "${RED}**                                                                          **"
echo -e "${RED}**                                                                          **"
echo -e "${RED}******************************************************************************"

CPUMOD=$(cat /proc/cpuinfo | grep -m 1 -w 'model name' | awk -F: '{print $2}')
HOSTNAME=$(uname -n)
KERNEL=$(uname -r)
MEMTOTAL=$(cat /proc/meminfo | grep -m 1 -w 'MemTotal' | awk -F: '{print $2}')
MEMFREE=$(cat /proc/meminfo | grep -m 1 -w 'MemFree' | awk -F: '{print $2}')
SWAPTOTAL=$(cat /proc/meminfo | grep -m 1 -w 'SwapTotal' | awk -F: '{print $2}')
SWAPFREE=$(cat /proc/meminfo | grep -m 1 -w 'SwapFree' | awk -F: '{print $2}')

echo -e ""
echo -e "${WHITE} Welcome ${RED}${USER} ${WHITE}to the ${RED}Dysphoric Network."
echo -e ""

echo -e "${WHITE} Date: ${RED}"`date`
echo -e ""

echo -e "${WHITE} Hostname:   ${RED}${HOSTNAME}"
echo -e "${WHITE} CPU Model: ${RED}${CPUMOD}"
echo -e ""
echo -e "${WHITE} Total Memory: ${RED}${MEMTOTAL}"
echo -e "${WHITE} Free Memory: ${RED}${MEMFREE}"
echo -e ""
echo -e "${WHITE} Swap Total:    ${RED}${SWAPTOTAL}"
echo -e "${WHITE} Swap Free:    ${RED}${SWAPFREE}"
echo -e ""

echo -e "${RED}******************************************************************************"
# Reset Terminal Colour Back to Normal
echo -e "${NC}"
