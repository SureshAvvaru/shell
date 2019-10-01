#!/bin/bash

HTTPD=$(netstat -tulpn | grep httpd | wc -l)

if [ $HTTPD -eq 1 ];
then
echo "HTTPD is running on this server"
else
systemctl restart httpd.service
echo "HTTPD service restarted"
fi


#To run in crontab
#crontab -e
#* * * * * bash /pathofthe script.sh
#crontab -l to list 
#cat /var/log/cron  to check the cron log files
#* * * * * bash /pathof the scriptfile.sh >> /tmp/httpd.txt

