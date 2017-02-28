FROM rgielen/httpd-image-simple:latest
MAINTAINER "Rene Gielen" <rgielen@apache.org>

RUN apt-get update && apt-get -y install certbot openssl \
        && a2enmod ssl rewrite proxy proxy_html proxy_http proxy_ajp deflate headers xml2enc alias \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/* \
        && rm -rf /tmp/*

RUN mkdir /var/lib/letsencrypt \
        && chgrp www-data /var/lib/letsencrypt && chmod 750 /var/lib/letsencrypt && chmod g+s /var/lib/letsencrypt \
        && mkdir /etc/letsencrypt \
        && chgrp www-data /etc/letsencrypt && chmod 750 /etc/letsencrypt && chmod g+s /etc/letsencrypt

EXPOSE 80 443
