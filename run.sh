#!/bin/bash

sudo apt install autossh tinyproxy
sudo service tinyproxy restart


mkdir -p $HOME/.ssh/
cp ./secrets/known_hosts $HOME/.ssh/
#chmod 0600 $HOME/.ssh/id_rsa

echo '拷贝完成'

autossh -p 11626 -M 5678 -CNR 8888:0.0.0.0:8888 pi@y25a350891.qicp.vip -i ./secrets/id_rsa.pub

