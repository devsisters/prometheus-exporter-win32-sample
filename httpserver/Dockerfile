FROM mcr.microsoft.com/windows/nanoserver:1809

USER ContainerAdministrator
EXPOSE 8080/tcp
WORKDIR C:\\HttpServer

ARG build_config=Debug
COPY .\\x64\\${build_config}\\* ./

CMD HttpServerSample.exe
