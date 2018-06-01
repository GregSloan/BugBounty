#! /bin/bash
sysctl -w kernel.shmmax=134217728
echo "kernel.shmmax = 134217729" >> /etc/sysctl.conf
update-rc.d postgresql enable
service postgresql start
msfdb init
