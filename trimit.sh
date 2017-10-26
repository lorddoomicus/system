#!/bin/bash
#
# Runs fstrim with some logging - this should be put in /etc/cront.weekly
#
# 2017-10-05	dw2	Initial Version
# 2017-10-26	dw2	Fixed Date
#

logfile=/var/log/fstrim.log

logger running fstrim ... 

$(date)			>> $logfile
/usr/sbin/fstrim -a -v	>> $logfile
echo			>> $logfile

