#!/usr/bin/env bash

# Diretorio de backup
backup_path="/home/hugo/docs"

# Diretorio para aonde o backup vai.
external_storage="aqui"

# Formato do arquivo
date_format=$(date "+%d-%m-%Y")
final_archive="backup-$date_format.tar.gz"

# Aonde o log será armazenado ?
log_file="var/log/daily-backup.log"


######################
# TESTES
######################
# Checando se o pendrive está plugado na máquina
if ! mountpoint -q -- $external_storage; then
  print "DEVICE NOT MOUNTED in: $external_storage CHECK IT. \n". >> $log_file
  exit 1
fi

#################################
# Inocio do backup.
#################################
if tar -czSpf "$external_storage/$final_archive" "$backup_path; then
  print "[$date_format] BACKUP SUCESS. \n >> $log_file" 
else
  printf "[$date_format] BACKUP EROOOOOOOOO.\n" >> $log_file
fi
 










