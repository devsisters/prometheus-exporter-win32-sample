# Prometheus Exporter Win32 예제

이 예제 애플리케이션은 Visual C++에서 Windows의 [HTTP Server API](https://docs.microsoft.com/en-us/windows/win32/http/http-server-sample-application)를 사용하여 HTTP 요청을 수신하고 응답을 내보낼 수 있는 기능을 이용하여 Prometheus 메트릭을 송신하는 예를 보여주는 샘플 코드입니다.

이 샘플 코드는 [Microsoft의 예제 코드](https://docs.microsoft.com/en-us/windows/win32/http/http-server-sample-application)를 기반으로 작성되었으며, 이해를 돕기 위하여 동기 방식의 입출력 모델을 사용하여 작성되었습니다. 입출력 완료 포트 (IOCP) 방식의 고성능 버전은 Microsoft의 [Windows 7 SDK 샘플](https://github.com/microsoft/Windows-classic-samples/tree/master/Samples/Win7Samples/netds/http/AsyncServer)을 참고하십시오.
Prometheus 메트릭 출력 형식에 관해서는 [이 문서](https://prometheus.io/docs/instrumenting/exposition_formats/)의 내용을 참고하십시오.

# 애플리케이션 빌드하기

이 예제 코드를 빌드하기 위해서는 Visual C++ 2017 이상의 개발 환경과 Windows 10 SDK가 필요합니다.

# 서버 실행하기

이 예제 코드를 빌드한 후 실행할 때는 다음과 같이 실행할 수 있습니다.

```powershell
HttpServerSample.exe http://+:40000/metrics
```

- `127.0.0.1` 대신 `+`를 지정하면 모든 네트워크 어댑터 주소를 수신 대상으로 정하겠다는 의미입니다. 만약 로컬 개발 환경에서 테스트하는 것이 목적이라면 `+` 대신 `127.0.0.1` 주소를 대신 사용해도 무방합니다.
- 포트는 사용 중인 포트와 겹치지 않는 범위에서 0 ~ 65535 이내에서 자유롭게 선택 가능합니다.
- Prometheus 서버는 호스트 주소를 지정하면 자동으로 `/metrics` 경로에 GET 요청을 주기적으로 보내어 데이터를 수집하므로 해당 경로에서만 수신하도록 설정해야 합니다.
