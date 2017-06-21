# What it is?

An experiment to run NFS Ganesha VFS module in a Container


```

# Build and run the Container

```bash 
  # docker build -t ganesha .
  # # exports /home/exports using the following command
  # docker run -ti --net=host --privileged  -v /home/exports/:/exports ganesha
  # # test mount on another terminal
  # mount localhost:/exports /mnt


