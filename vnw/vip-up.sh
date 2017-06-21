#!/bin/sh

echo Starting VIF
/sbin/ifup $1:ucarp
echo Starting NFS container
rpcbind
docker run -d --privileged -p $VIRT_IP_ADDR:5501:2049 -v vol777:/exports shiv2
