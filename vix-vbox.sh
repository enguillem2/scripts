#!/bin/bash
set -e
wget -qO- https://www.virtualbox.org/download/oracle_vbox_2016.asc | gpg --dearmor --yes -o /usr/share/keyrings/oracle-virtualbox-2016.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian noble contrib" > /etc/apt/sources.list.d/virtualbox.list
echo "options kvm enable_virt_at_load=0" > /etc/modprobe.d/vbox-kvm.conf
apt-get update && apt-get install -y virtualbox-7.2
/sbin/vboxconfig && VBoxManage --version
