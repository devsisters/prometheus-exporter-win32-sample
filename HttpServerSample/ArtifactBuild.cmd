@echo off
pushd "%~dp0"

powershell Compress-7Zip "Release" -ArchiveFileName "HttpServerSampleX86.zip" -Format Zip

powershell Compress-7Zip "x64\Release" -ArchiveFileName "HttpServerSampleX64.zip" -Format Zip

:exit
popd
@echo on