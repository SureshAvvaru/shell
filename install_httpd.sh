#!/bin/bash

echo ###Installing Apache###

yum install httpd

echo ***Completed Installing apache***

echo "Changing port"

cd /etc/httpd/conf
 sed -i 's/80/8080' httpd.conf

echo "port is changed to 8080"

echo " ##############################
       # apache service is starting #
       ############################## "

service httpd start

