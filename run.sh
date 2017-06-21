#!/bin/bash
function start_rpc {
    rpcbind || return 0
    rpc.statd -L || return 0
    rpc.idmapd || return 0
}
start_rpc
ganesha.nfsd -F -L /var/log/ganesha.log -f /vfs.conf
