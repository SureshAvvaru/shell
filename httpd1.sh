#!/bin/bash

display_message "###Installing Apache###"

yum install httpd

display_message "***Completed Installing apache***"

display_port "Changing port"

cd /etc/httpd/conf
 sed -i 's/80/8080' httpd.conf

echo "port is changed to 8080"

echo " ##############################
       # apache service is starting #
       ############################## "


