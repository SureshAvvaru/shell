#!/bin/bash

#Taking backup of user suresh
USER_SURESH=$(tar -cvf suresh-backup.1.10.2019.tar.gz /home/suresh/)
DEST_PATH=$(mv suresh-backup.1.10.2019.tar.gz /root)

echo "$USER_SURESH Backup Completed"
echo "Moved BackupDirectory to Root home directory"
