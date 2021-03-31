@echo off
setlocal enabledelayedexpansion
pushd "%~dp0"

if exist Debug rd /s /q Debug
if exist Release rd /s /q Release
if exist x64 rd /s /q x64

for /f "usebackq tokens=*" %%i in (`vswhere -latest -requires Microsoft.Component.MSBuild -find MSBuild\**\Bin\MSBuild.exe`) do (
  "%%i" /p:Configuration=Release /p:Platform=x64
  "%%i" /p:Configuration=Release /p:Platform=x86
)

:exit
popd
@echo on