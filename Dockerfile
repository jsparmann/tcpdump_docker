FROM alpine:latest
MAINTAINER jens.sparmann@wago.com 
LABEL version="1.0"
run apk add --no-cache tcpdump
run mkdir /data
env interface enp2s0
env filesize 1
env filecount 10
env store /data/aida.pcap
CMD ["sh","-c","/usr/bin/tcpdump -i $interface -C $filesize -W $filecount -w $store"]
