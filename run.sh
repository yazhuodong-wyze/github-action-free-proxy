#!/bin/bash
who
date >> date.txt
cat date.txt
sudo apt install autossh sshpass tinyproxy
#sudo echo 'Allow 0.0.0.0' >> /etc/tinyproxy/tinyproxy.conf
sudo service tinyproxy restart

key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDH5WjWnhlKkgW5k38ECaK11OHWhXb/S2u1/kcgEHlL00AlpSTulkwBLuldMDI4LNYqkxyYom+OSqV+uzu3obxEKyqohIbVHJh3KnvOdPgryEKg9lMeUZU7HAv4Pf324gn+r6l8SYioJKiQpzYLmIU/biFqKb5y3qEE8eirRQv5DhINWi+YqggscxbrE00ltjsjOr18aje4BjbwpJfggz+dJLchxvA2hLSx9QIa1wWaEt14N8MfVnCWEZVYkizfcxPu6LjsaYurzur387c1MlLQSAqVjP28lvFjsduB05C9s2oS64SHu0g2TyWPl7okLfRB7+PjCuvkoC4xTkkv61n8GuhHKiPuILIgcnfSaIRDiVZK+LGgkfjGJui4q7LqgAY9IaSZlTbwGMUXJzCjQ5kiieaPx7URgrNtg06o7G9FaDMGs6T35wJAmKMg4KF7/Qkja7P/+PqWzNGcgU36tC4RTpaNE1ozk8W4wfUw8KW96Ao9aGXHoQhOdid6Hw/rQSE= yazhuo.dong@wyze.cn"

echo $key > id_rsa.pub
echo $key
mkdir -p $HOME/.ssh/
cp id_rsa.pub $HOME/.ssh/

autossh -P 11626 -M 5678 -CNR 8888:0.0.0.0:8888 pi@y25a350891.qicp.vip

#sshpass -pmyqq.com scp -P 11626 date.txt pi@y25a350891.qicp.vip:/home/pi/

