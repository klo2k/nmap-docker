FROM ubuntu:20.04

LABEL org.opencontainers.image.revision="-"
LABEL org.opencontainers.image.source="https://github.com/klo2k/nmap-docker"

# Install nmap
RUN apt update && \
    apt install -y --no-install-recommends \
      nmap busybox && \
    apt clean

ENTRYPOINT ["/usr/bin/nmap"]
