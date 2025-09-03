#!/bin/bash
apt install nala -y
nala update 
nala install -y perl
cd /tmp
wget https://github.com/glpi-project/glpi-agent/releases/download/1.15/glpi-agent-1.15-linux-installer.pl
chmod +x glpi-agent-1.15-linux-installer.pl
perl glpi-agent-1.15-linux-installer.pl --install --server=http://10.115.15.74/
systemctl status glpi-agent
glpi-agent --force
echo "Installation et configuration de Agent-GLPI terminées"