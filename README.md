# What it is?

An experiment to run NFS Ganesha VFS module in a Container. Slightly modified from the rootfs version. Runs RPCbind inside the container so with proper --publish flag, multiple containers can be run on the same host.


# Build and run the Container
```bash
  # docker build -t shiv0 .
  # # exports /home/exports using the following command
  # docker run -d --privileged --publish 0.0.0.0:5501:2049  -v /home/exports/:/exports shiv0
  # # test mount on another terminal
  # mount -t nfs -o nfsvers=4,port=5501 127.0.0.1:/exports /mnt
