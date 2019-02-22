Ubuntu - Networking Toolbox
This appliance contains the following networking tools:

net-tools (basic network administration tools)
iproute2 (advanced network administration tools)
ping and traceroute
curl (data transfer utility)
host (DNS lookup utility)
iperf3
mtr (full screen traceroute)
socat (utility for reading/writing from/to network connections)
ssh client
tcpdump
telnet
msend
mreceive
The /root folder is mount by default

Build and publish the Images
First the base image has to be created:

docker build -t ory84/ubuntu-multicast:xenial .

