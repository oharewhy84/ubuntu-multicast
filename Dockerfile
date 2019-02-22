# docker base image for basic networking tools

FROM ubuntu:xenial

RUN DEBIAN_FRONTEND=noninteractive apt update && apt -y --no-install-recommends install \
    net-tools tcpdump telnet traceroute curl iperf3 knot-host openssh-client mtr-tiny socat nano vim-tiny \
    nmap iputils-ping && apt -y --install-recommends install make git python3-pip \
    && git clone https://github.com/troglobit/mtools.git \
    && rm -rf /var/lib/apt/lists/*

VOLUME [ "/root" ]
CMD [ "sh", "-c", "cd; exec bash -i" ]
