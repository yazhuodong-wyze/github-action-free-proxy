#!/bin/bash
who
date >> date.txt
sudo apt install sshpass
sshpass -p x scp -rp -P 11626 date.txt pi@y25a350891.qicp.vip:/home/pi/

