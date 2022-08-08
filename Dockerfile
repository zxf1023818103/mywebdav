FROM httpd:latest

COPY httpd.conf /usr/local/apache2/conf/
COPY httpd-autoindex.conf /usr/local/apache2/conf/extra/
COPY httpd-dav.conf /usr/local/apache2/conf/extra/

ENV USERNAME admin
ENV PASSWORD admin

CMD ["/bin/sh", "-c", "htpasswd -b -c /usr/local/apache2/user.passwd \"$USERNAME\" \"$PASSWORD\" && httpd-foreground"]
