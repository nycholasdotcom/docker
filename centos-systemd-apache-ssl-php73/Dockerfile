FROM nycholasdotcom/centos:centos-7-systemd-apache-ssl
ENV container docker
RUN yum install https://rpms.remirepo.net/enterprise/remi-release-7.rpm; \
    yum install yum-utils; \
    yum-config-manager --enable remi-php73; \
    yum install php php-mysql
CMD ["/usr/sbin/init"]
