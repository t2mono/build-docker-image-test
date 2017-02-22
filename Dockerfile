FROM centos:6

RUN yum -y install php httpd mysql-server
COPY file/index.php /var/www/html/index.php
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
