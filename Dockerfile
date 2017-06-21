FROM fedora:22
MAINTAINER Huamin Chen, hchen@redhat.com

RUN dnf install -y nfs-ganesha nfs-ganesha-vfs rpcbind
RUN mkdir -p /exports
EXPOSE 2049/tcp
ADD vfs.conf /vfs.conf
ADD run.sh /usr/sbin/run.sh
ENTRYPOINT ["/usr/sbin/run.sh"]
