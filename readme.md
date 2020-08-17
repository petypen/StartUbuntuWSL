# Running Ubuntu WSL and configuring the eth0 Ethernet adapter (Запуск WSL Ubuntu и конфигурирование Ethernet адаптера eth0)

## Решаемая проблема.
При старте системы Linux в WSL 2 виртуальному Ethernet адаптеру eth0 назначается динамический IP4 адрес. Это доставляет неудобства, если требуется из Windows обращаться к службам Linux по фиксированному адресу.

## Исходная информация
Идея для командных файлов была взята из issue репозитория [github.com/MicrosoftDocs/WSL](https://github.com/MicrosoftDocs/WSL/issues/418#issuecomment-648570865)

## Порядок использования
Выполняйте запуск Linux сервера командным файлом StartUbuntu2004.cmd Дополнительный командный файл StartUbuntu2004_netsh.cmd используется командным файлом StartUbuntu2004.cmd и должен располагаться в одном с ним каталоге.

Останавливайте Linux сервер командным файлом StopUbuntu2004.cmd

## Конфигурирование
### Конфигурирование запуска
В командном файле StartUbuntu2004.cmd измените следующие строки:

```cmd
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
```
### Конфигурирование остановки
В командном файле StopUbuntu2004.cmd измените следующие строки:

```cmd
REM Имя распределения (дистрибутива Linux)
set _distr=Ubuntu-20.04
```