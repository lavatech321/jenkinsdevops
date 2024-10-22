FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    systemd \
    systemd-sysv \
    dbus \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*



ENTRYPOINT ["/lib/systemd/systemd"]
