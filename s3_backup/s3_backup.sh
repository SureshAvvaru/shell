#!/bin/bash
#Sending backup file to s3 bucket

s3_bucket=$(aws s3 cp /root/shell-scripting/suresh.backup-1-10-2019.tar.gz s3://b1-suresh)
echo "$s3_bucket"

echo "*******************************************"
echo "*Backup file successfull sent to s3 bucket*"
echo "*******************************************"
