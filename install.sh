#!/bin/bash
vermelho="\e[31m"
verde="\e[32m"
amarelo="\e[33m"
azul="\e[34m"
roxo="\e[38;2;128;0;128m"
reset="\e[0m"

rm -rf /root/checuser/
rm -f /usr/local/bin/iniciar
sudo kill -9 $(lsof -t -i:5454)
pkill -9 -f "/root/checuser/checkuser.py"


apt update && apt upgrade -y && apt install python3 git -y
git clone https://github.com/RPful/checuser.git
chmod +x /root/checuser/checkuserMenu.sh
ln -s /root/checuser/checkuserMenu.sh /usr/local/bin/iniciar

clear
echo -e "Para iniciar o menu digite: ${amarelo}iniciar${reset}"
