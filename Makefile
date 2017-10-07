# Makefile ( for system stuff ) 
# (c) 2016 Derrik Walker v2.0
#
# Installs all the scripts and support files in their proper locations 
#
# This is licensed for use under the GNU General Pulbic License v2
#
# 2016-09-24	dwalker		Initial version
# 2017-10-06	dwalker 	Added installs for trimit and elevators	
#

BIN=/usr/local/bin
SYSTEMD=/etc/systemd/system
CRON_WEEKLY=/etc/cron.weekly

install:
	# scripts that go in /usr/local/bin
	install boot-email.sh ${BIN}
	install elevators.sh ${BIN}

	# Systemd units
	install boot-email.service ${SYSTEMD}
	install elevators.service ${SYSTEMD}

	#cront jobs
	install trimit.sh ${CRON_WEEKLY}
