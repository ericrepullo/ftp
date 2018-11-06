FROM ubuntu:18.04
RUN apt-get update && apt-get -y upgrade
RUN apt install -y ftp
RUN apt install -y vsftpd
RUN adduser user
RUN apt install nano
EXPOSE 21
CMD ["/usr/sbin/vsftpd"]
ADD vsftpd.conf /etc/vsftpd.conf
