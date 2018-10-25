FROM debian
RUN apt update && apt install -yy tftpd xinetd
ENTRYPOINT ["/etc/init.d/xinetd", "start"]
COPY xinetd /etc/init.d/xinetd
