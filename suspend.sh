#!/bin/bash

# Modifica la configuració per evitar la suspensió
sudo sed -i 's/#HandleLidSwitch=suspend/HandleLidSwitch=ignore/' /etc/systemd/logind.conf
sudo sed -i 's/#HandleLidSwitchDocked=suspend/HandleLidSwitchDocked=ignore/' /etc/systemd/logind.conf

# Reinicia el servei
sudo systemctl restart systemd-logind
