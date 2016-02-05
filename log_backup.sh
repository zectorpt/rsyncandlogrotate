#!/bin/sh
# j.almeida@ocado.com
# Alow developers to see logs in log server
# Add in crontab: 10 */3 * * * /root/scripts/log_backup.sh
LOCAL_FOLDER="/users/osr/knapp/lager/inst/osr1/log"
REMOTE_FOLDER="/applogs/ddhmp/"
REMOTE_HOSTNAME="pexxxxx03"
REMOTE_USER="root"
LOGFILENAME="log_backup_$(date -d "today" +"%Y%m%d%H%M").log"

touch /var/log/"$LOGFILENAME"
echo "Mirror started at:" >> /var/log/"$LOGFILENAME"
echo `date` >> /var/log/"$LOGFILENAME"
#rsync -auvz  --delete-excluded "$LOCAL_FOLDER" "$REMOTE_USER"@"$REMOTE_HOSTNAME":"$REMOTE_FOLDER" --log-file="/var/log/log_backup.log"
sleep 1
echo "Mirror finished at:" >> /var/log/"$LOGFILENAME"
echo `date` >> /var/log/"$LOGFILENAME"
# Delete files older that 1801 min / 30 hr's / 10 files...
find /var/log/ -name "log_backup_*" -mmin +1801 -type f -print -delete
