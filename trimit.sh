#!/bin/bash
# (c) 2017 Derrik Walker v2.0
#
# Runs fstrim with some logging - this should be put in /etc/cront.weekly
#
# This is licensed for use under the GNU General Pulbic License v2
#
# 2017-10-05	dw2	Initial Version
#

logfile=/var/log/fstrim.log

logger running fstrim ... 

echo date		>> $logfile 
/usr/sbin/fstrim -a -v	>> $logfile
echo			>> $logfile
