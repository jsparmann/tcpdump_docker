# tcpdump_docker
 Docker Container for tcpdump
 
 
-	`interface`: interface to sniff
-	`filesize`: what filesize in MB do you want befor a new file where write
-	`filecount`: what filecount do want befor the first file are overridden 
-	`store`: where and what are the name of the pcap files to store 
  
```console
$ docker run \
      --net=host \
      -v /data:/data \
      -e interface=enp2s0 \
      -e filesize=1 \
      -e filecount=10 \
      -e store=/data/example.pcap \
      secboy/tcpdump:latest
```
