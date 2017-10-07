#!/bin/bash
# (c) 2017 Derrik Walker v2.0
#
# Configures the elevators for the SSDs to deadline. 
#
# This is licensed for use under the GNU General Pulbic License v2
#
# 2017-09-29	dw2	Initial Version
# 2017-10-05	dw2	Made it a bit more automated and generic
#			Adding logging as well
#

for ssd in $( lsblk -d -o name,rota | grep 0$ | awk '{print $1}' )
do
	sys=/sys/block/$ssd/queue/scheduler
	if grep mq-deadline $sys > /dev/null
	then 
		logger "Setting mq-deadline on $ssd ..."	
		echo mq-deadline > $sys
	else
		logger "Setting deadline on $ssd ..."	
		echo deadline > $sys
	fi
done
