# 노트: x86 빌드를 도커 컨테이너로 실행하고자 할 때에는 Windows-on-Windows (WoW) 서브 시스템이 들어있는
# mcr.microsoft.com/windows/servercore 이미지로 베이스 이미지를 변경해서 빌드해야 합니다.

FROM mcr.microsoft.com/windows/nanoserver:2004

USER ContainerAdministrator
WORKDIR C:\\HttpServer
COPY .\\x64\\Release\\* ./

ENTRYPOINT [ "HttpServerSample.exe" ]
