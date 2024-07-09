## GETTING START

Install termux and type
```
    pkg install x11-repo wget -y && pkg update -y && wget https://raw.githubusercontent.com/Perzivall/acesso_remoto_celulares/main/install.sh && chmod +x install.sh && ./install.sh && clear && echo 'Change Termux root password now...' && passwd && clear && echo 'Instalação finalizada'
```

Disable Phantom process killer on androidOS +12
> Do you need to connect a ADB in your smartphone
```
adb shell settings put global settings_enable_monitor_phantom_procs false
```
