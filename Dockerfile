FROM rgielen/httpd-image-simple:17.10
MAINTAINER "René Gielen" <rgielen@apache.org>

RUN apt-get update && apt-get -y install openssl software-properties-common \
        && a2enmod ssl rewrite proxy proxy_html proxy_http proxy_ajp deflate headers xml2enc alias \
        && add-apt-repository ppa:certbot/certbot && apt-get update && apt-get -y install certbot \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/* \
        && rm -rf /tmp/*

RUN mkdir -p /var/lib/letsencrypt \
        && chgrp www-data /var/lib/letsencrypt && chmod 750 /var/lib/letsencrypt && chmod g+s /var/lib/letsencrypt \
        && mkdir -p /etc/letsencrypt \
        && chgrp www-data /etc/letsencrypt && chmod 750 /etc/letsencrypt && chmod g+s /etc/letsencrypt

EXPOSE 80 443
