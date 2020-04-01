@echo off
pushd "%~dp0"

if exist Debug rd /s /q Debug
if exist Release rd /s /q Release
if exist x64 rd /s /q x64
if exist HttpServerSample*.zip del /f /q HttpServerSample*.zip

:exit
popd
@echo on