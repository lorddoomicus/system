#!/bin/bash
# Sends email at boot time, called via systemd
# (c) 2016 Derrik Walker v2.0
#
# This is licensed for use under the GNU General Pulbic License v2
#
# 2016-09-24	DW2	Initial Version
#

echo $(hostname) booted on $(date) | mail -s "$(hostname) boot" root

exit 0
