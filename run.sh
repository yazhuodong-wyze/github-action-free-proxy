#!/bin/bash
who
date >> date.txt
cat date.txt
sudo apt install autossh sshpass tinyproxy
echo 'Allow 0.0.0.0' >> /etc/tinyproxy/tinyproxy.conf
service tinyproxy restart

sshpass -px scp -P 11626 date.txt pi@y25a350891.qicp.vip:/home/pi/

