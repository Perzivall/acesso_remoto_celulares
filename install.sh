#!/bin/bash
clear
echo 'Iniciando instalador...'
read -p 'Digite o IP do Wireguard do lado do CLiente: ' IP_ADDR
sleep 3
echo ''
echo 'termux-wake-lock' >> ~/.bashrc
echo 'sshd' >> ~/.bashrc
echo 'export DISPLAY=":1"' >> ~/.bashrc
pkg install openssh xfce4 tigervnc firefox -y 
vncserver -from $IP_ADDR :1
echo 'xfce4-session' >> ~/.vnc/xstartup
echo 'Change root password now...'
exit
