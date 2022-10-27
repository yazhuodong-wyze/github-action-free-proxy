cpolar_authtoken='ZDY3ZjhhZjUtY2Q2ZS00NzliLTk1MjItMDU3ZTczOWMyMjJk'

sudo apt --force-yes -y install tinyproxy 
sudo service tinyproxy restart
sudo curl -L https://www.cpolar.com/static/downloads/install-release-cpolar.sh | sudo bash
cpolar authtoken ${cpolar_authtoken}
cpolar tcp 8888
