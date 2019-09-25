#!/bin/bash
#This script allows to create users in the linux system.

USERS=${@}
for USER in ${USERS}
do
 SPEC='!@#$%^&*()_+'
 SPEC_CHAR=$(echo ${SPEC}|fold -w1|shuf|head -1)
 PASSWORD=$(date +%s%N)${RANDOM}${SPEC_CHAR}
 useradd ${USER} -p ${PASSWORD}
 echo "***Listed users are created successfully***"
 echo ${PASSWORD} #if you dont want to expose password you can remove this parameter, But if you remove this line you dont know what is the password given to the user.
done
 
