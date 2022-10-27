sudo apt --force-yes -y install tinyproxy 
sudo service tinyproxy restart
sudo curl -L https://www.cpolar.com/static/downloads/install-release-cpolar.sh | sudo bash
cpolar authtoken $CPOLAR_AUTHTOKEN
cpolar tcp 8888
