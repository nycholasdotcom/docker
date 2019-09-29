FROM nycholasdotcom/centos:centos-7-systemd-apache
ENV container docker
RUN yum -y install mod_ssl
EXPOSE 443/tcp
CMD ["/usr/sbin/init"]
