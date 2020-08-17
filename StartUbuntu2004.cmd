REM @echo off
echo Start server **Ubuntu-20.04**

REM Имя распределения (дистрибутива Linux)
set _distr=Ubuntu-20.04
REM Статический IP адрес Ubuntu для виртуального адаптера eth0:1
set _staticipLinux=192.168.50.20
set _broadcastLinux=192.168.50.255
REM Статический IP адрес Windows для виртуального адаптера vEthernet (WSL)
set _staticipWimdows=192.168.50.10
REM Имя хоста (домена), см ipconfig - Connection-specific DNS Suffix
set _domen=PEN-HOME
REM Имя пользователя АДМИНИСТРАТОР
set _username=Администратор

REM Добавить статический IP адрес в Linux
wsl -d %_distr% -u root ip addr add %_staticipLinux%/24 broadcast %_broadcastLinux% dev eth0 label eth0:1

REM Добавить статический IP адрес в Win10
runas /noprofile /user:%_domen%\%_username% "%CD%\StartUbuntu2004_netsh.cmd %_staticipWimdows%"
wsl -l -v