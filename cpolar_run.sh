sudo apt --force-yes -y install autossh tinyproxy 
echo '下载必要组件完成'
sudo service tinyproxy restart
echo '启动代理完成'
sudo curl -L https://www.cpolar.com/static/downloads/install-release-cpolar.sh | sudo bash
sudo cpolar version
sudo cpolar authtoken X
sudo cpolar tcp 8888
