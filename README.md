## Running securely
```bash
podman run --name rsyslog --replace --rm -it -p 514:514/udp --security-opt no-new-privileges --cap-drop all --cap-add NET_BIND_SERVICE rsyslog-experimental:latest
```

## Supported tags and respective `Dockerfile` links:

- [`latest` (*Dockerfile*)](https://github.com/andrico21/rsyslog/Dockerfile)

All images built for `linux/amd64` and `linux/arm64`
