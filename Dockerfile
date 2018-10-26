FROM debian
RUN apt update && apt install -yy tftpd xinetd
ENTRYPOINT ["/etc/init.d/xinetd", "start"]
ADD xinetd /etc/init.d/xinetd
RUN chmod 755 /etc/init.d/xinetd
