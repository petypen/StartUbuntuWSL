@echo off
echo Start server **Ubuntu-20.04**

REM Добавить IP-адрес в Ubuntu, 192.168.50.20, названный eth0:1
wsl -d Ubuntu-20.04 -u root ip addr add 192.168.50.20/24 broadcast 192.168.50.255 dev eth0 label eth0:1

REM Добавить IP-адрес в Win10, 192.168.50.10 
runas /noprofile /user:PEN-HOME\Администратор %CD%\StartUbuntu2004_netsh.cmd
wsl -l -v