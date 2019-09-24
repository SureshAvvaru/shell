#!/bin/bash

#Finding .ssh file of a ec2-user
find /home/ -user ec2-user -name .ssh

echo "***found .ssh file from ec2-user home directory***"
