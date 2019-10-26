#!/bin/bash
#
echo "Started Taking Jenkins Backup"

JENKINS_HOME=$(tar -cvf Jenkins_backup-2-10-2019.tar.bz /var/lib/jenkins/*)

echo "$JENKINS_HOME"
echo "*****************************************"
echo "*       Completed Jenkins Backup        *"
echo "*****************************************"

echo "#####Started Sending Backupfile to S3 Bucket#####"

S3_BUCKET=$(aws s3 cp Jenkins_backup-2-10-2019.tar.bz s3://b1-suresh)

echo "$S3_BUCKET"

echo "**********************************************"
echo "* Successfully Completed Backup to S3 Bucket *"
echo "**********************************************"

