@echo off
pushd "%~dp0"

call HttpServerSample\Build.cmd

docker rm -f promtest
docker build -t promtest:latest -f .\Dockerfile .\HttpServerSample
docker run --rm -d -p 40000:40000 --name=promtest promtest:latest http://+:40000/metrics
start http://localhost:40000/metrics

:exit
popd
@echo on
