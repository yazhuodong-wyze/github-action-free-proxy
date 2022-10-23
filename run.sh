#!/bin/bash

sudo apt install autossh sshpass tinyproxy
#sudo echo 'Allow 0.0.0.0' >> /etc/tinyproxy/tinyproxy.conf
sudo service tinyproxy restart


mkdir -p $HOME/.ssh/
cp ./secrets/* $HOME/.ssh/
chmod 0600 $HOME/.ssh/id_rsa

echo '拷贝完成'

autossh -p 11626 -M 5678 -CNR 8888:0.0.0.0:8888 pi@y25a350891.qicp.vip

#sshpass -pmyqq.com scp -P 11626 date.txt pi@y25a350891.qicp.vip:/home/pi/

