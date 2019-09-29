FROM nycholasdotcom/centos:centos-7-systemd-apache-ssl
ENV container docker
RUN yum -y install https://rpms.remirepo.net/enterprise/remi-release-7.rpm; \
    yum -y install yum-utils; \
    yum-config-manager --enable remi-php73; \
    yum -y install php php-mysql
CMD ["/usr/sbin/init"]
