#!/bin/bash

wget https://repo.zabbix.com/zabbix/6.4/ubuntu/pool/main/z/zabbix/zabbix-agent2_6.4.0-1%2Bubuntu22.04_amd64.deb

sudo dpkg -i zabbix-agent2_6.4.0-1+ubuntu22.04_amd64.deb

cp zabbix_agent2.conf /etc/zabbix/zabbix_agent2.conf

sudo systemctl enable zabbix-agent2

sudo systemctl start zabbix-agent2

sleep 1
sudo systemctl restart zabbix-agent2
sleep 1
sudo systemctl restart zabbix-agent2
