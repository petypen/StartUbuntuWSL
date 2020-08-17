@echo off

REM Имя распределения (дистрибутива Linux)
set _distr=Ubuntu-20.04

echo Stopping a running server **Ubuntu-20.04**
wsl --terminate %_distr%
wsl -l -v