#!/bin/bash

RED="\033[1;34m"
GREEN="\033[1;32m"
NOCOLOR="\033[0m"

echo "Today is " 'date'

echo -e "Step 1: ${RED}Pre-Configuring Packages${NOCOLOR}"
sudo dpkg --configure -a

echo

echo -e "Step 2: ${RED}Fix and Attempt to Correct a System with Broken Dependencies${NOCOLOR}"
sudo apt-get install -f

echo

echo -e "Step 3: ${RED}Update apt Cache${NOCOLOR}"
sudo apt-get update

echo

echo -e "Step 4: ${RED}Upgrade Packages${NOCOLOR}"
sudo apt-get upgrade

echo

echo -e "Step 5: ${RED}Distribution Upgrade${NOCOLOR}"
sudo apt-get dist-upgrade

echo

echo -e "Step 6: ${RED}Remove Unused Packages${NOCOLOR}"
sudo apt-get --purge autoremove

echo

echo -e "Step 7: ${RED}clean up${NOCOLOR}"
sudo apt-get autoclean

echo

echo -e "Step 8: ${RED}Updating Snapcraft.io Packages${NOCOLOR}"
sudo snap refresh

echo -e "Step 8: ${RED}Updating Flatpak Packages${NOCOLOR}"
sudo flatpak update

echo

echo -e "Step 8: ${GREEN}ALL DONE...${NOCOLOR}"