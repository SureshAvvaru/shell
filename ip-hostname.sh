#!/bin/bash

#Declaring Variables Below
PIP=$(curl -sL http://169.254.169.254/latest/meta-data/public-ipv4/)
PVIP=$(curl -sL http://169.254.169.254/latest/meta-data/local-ipv4/)
PVHNAME=$(curl -sL http://169.254.169.254/latest/meta-data/hostname/)
PBHNAME=$(curl -sL http://169.254.169.254/latest/meta-data/public-hostname/)
sleep 5s   #"This command is will sleep the script for 5 seconds after that it will show the output"

echo "***My server publicname is ${PBHNAME}***"
echo "***privatename is $PVHNAME***"  #we can use variable define with ${} or $ but stick with one style
echo "***Server publicip is $PVIP***"
echo "***server privateip is $PIP***"

echo "**************************************************"
echo "* This script will works on any aws EC2 INSTANCES*"
echo "**************************************************"
