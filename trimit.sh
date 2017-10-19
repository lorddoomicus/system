#!/bin/bash
#
# Runs fstrim with some logging - this should be put in /etc/cront.weekly
#
# 2017-10-05	dw2	Initial Version
#

logfile=/var/log/fstrim.log

logger running fstrim ... 

$date			>> $logfile 
/usr/sbin/fstrim -a -v	>> $logfile
echo			>> $logfile

