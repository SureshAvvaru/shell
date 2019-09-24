#!/usr/bin/bash
#Deleting users

userdel -r $(ls -l /home/"devuser1" "devuser2" "devuser3" "devuser4" "devuser5")

echo ***deleted all users***
