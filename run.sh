#!/bin/bash

your_server_domain_or_ip='y25a35089.qicp.vip'
your_server_ssh_port=11626
your_server_user=pi

sudo apt install autossh tinyproxy
echo '下载必要组件完成'
sudo service tinyproxy restart
echo '启动代理完成'

mkdir -p $HOME/.ssh/
cp ./secrets/* $HOME/.ssh/
chmod 0600 $HOME/.ssh/id_rsa
echo '密钥拷贝完成'

autossh -p ${your_server_ssh_port} -M 5678 -CNR 8888:0.0.0.0:8888 ${your_server_user}@${your_server_domain_or_ip} &
echo '隧道打通完成'
echo '不使用时，请及时 workflow cancel,一个自然月2000分钟,节省资源'
nc -l 54321

