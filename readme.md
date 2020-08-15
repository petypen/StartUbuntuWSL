# Running Ubuntu WSL and configuring the eth0 Ethernet adapter (Запуск WSL Ubuntu и конфигурирование Ethernet адаптера eth0)

## Решаемая проблема.
При старте системы Linux в WSL 2 виртуальному Ethernet адаптеру eth0 назначается динамический IP4 адрес. Если требуется из Windows обращаться к службам Linux по фиксированному адресу, можно воспользоваться предложенным способом.

## Исходная информация
Идея для командных файлов была взята из issue репозитория [github.com/MicrosoftDocs/WSL](https://github.com/MicrosoftDocs/WSL/issues/418#issuecomment-648570865)

## Порядок использования
Выполняйте запуск Linux сервера командным файлом StartUbuntu2004.cmd Дополнительный командный файл StartUbuntu2004_netsh.cmd используется командным файлом StartUbuntu2004.cmd и должен располагаться в одном с ним каталоге.

Останавливайте Linux сервер командным файлом StopUbuntu2004.cmd

## Конфигурирование
Измените значения IP адресов в командных файлах.