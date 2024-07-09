#!/bin/bash
echo 'Iniciando instalador...'
sleep 3
echo ''
echo 'termux-wake-lock' >> ~/.bashrc
echo 'sshd' >> ~/.bashrc
echo 'export DISPLAY=":1"' >> ~/.bashrc
source ~/.bashrc
pkg update
pkg upgrade -y
pkg install openssh xfce4 firefox -y 
read -p 'Digite o IP do Wireguard do lado do CLiente' IP_ADDR
vncserver -from $IP_ADDR :1
echo 'xfce4-session' >> ~/.vnc/xstartup
echo 'Change root password now...'
passwd
exit
