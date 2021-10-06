#!/bin/bash

USER=$1
DATA=$(date +"%Y%m%d%H%M")

if ls /home/$USER/Backup > /dev/null
then
  echo " Pasta existe"
else
   cd /home/$USER
   mkdir Backup
   tar -cvzf /home/$USER/Backup/backup-"$DATA".tar.gz /home/$USER
   echo "O Backup foi criado na pasta:"
fi
