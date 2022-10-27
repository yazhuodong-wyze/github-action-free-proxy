sudo apt --force-yes -y install tinyproxy 
sudo service tinyproxy restart
sudo curl -sL https://git.io/cpolar | sudo bash
cpolar version
cpolar authtoken ZDY3ZjhhZjUtY2Q2ZS00NzliLTk1MjItMDU3ZTczOWMyMjJk
cpolar tcp 8888 &
