#!/bin/sh
#Collect mysql-process-count, load avg, Memory Info, vmstat
#
LOGFILE=/var/log/Logtest`date +%m-%d-%Y`
uptime >>$LOGFILE
echo mysql-process-count `ps -ef|grep mysql|grep -v grep|wc -l` >>$LOGFILE
echo root-process-count `ps -ef|grep root|grep -v grep|wc -l` >>$LOGFILE
# Collect memory information in MB
free -m >>$LOGFILE
# Get vm statistics every 2 seconds for 3 times
vmstat 2 3  >>$LOGFILE
