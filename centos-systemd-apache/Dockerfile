FROM nycholasdotcom/centos:centos-7-systemd
ENV container docker
RUN yum -y install httpd && \
    systemctl enable httpd
EXPOSE 80/tcp
VOLUME [ "/var/www/html" ]
CMD ["/usr/sbin/init"]
