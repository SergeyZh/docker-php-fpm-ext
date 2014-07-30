FROM sergeyzh/centos6-php-fpm

MAINTAINER Sergey Zhukov, sergey@jetbrains.com

RUN yum install -y php-xml php-pecl-apc php-pdo php-mysql php-mbstring php-process php-ldap php-pear

CMD /run-services.sh

EXPOSE 9000
