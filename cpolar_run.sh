sudo apt --force-yes -y install tinyproxy 
sudo service tinyproxy restart
sudo curl -L https://www.cpolar.com/static/downloads/install-release-cpolar.sh | sudo bash
sudo cpolar version
sudo cpolar authtoken ZDY3ZjhhZjUtY2Q2ZS00NzliLTk1MjItMDU3ZTczOWMyMjJk
sudo cpolar tcp 8888
