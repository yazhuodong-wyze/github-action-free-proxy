#!/bin/bash

sudo apt install autossh tinyproxy
echo '下载必要组件完成'
sudo service tinyproxy restart
echo '启动代理完成'

mkdir -p $HOME/.ssh/
cp ./secrets/* $HOME/.ssh/
chmod 0600 $HOME/.ssh/id_rsa
echo '密钥拷贝完成'

autossh -p 11626 -M 5678 -CNR 8888:0.0.0.0:8888 pi@y25a350891.qicp.vip &
echo '隧道打通完成'
nc -l 54321

