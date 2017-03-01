[![](https://images.microbadger.com/badges/image/rgielen/httpd-image-proxy.svg)](https://microbadger.com/images/rgielen/httpd-image-proxy "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/rgielen/httpd-image-proxy:16.10.svg)](https://microbadger.com/images/rgielen/httpd-image-proxy:16.10 "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/rgielen/httpd-image-proxy.svg)](https://microbadger.com/images/rgielen/httpd-image-proxy "Get your own version badge on microbadger.com")

# httpd-image-proxy Docker Image

This image is based on [rgielen/httpd-image-simple](https://hub.docker.com/r/rgielen/httpd-image-simple/) Apache httpd image.
It contains rewrite and proxy modules along with OpenSSL and [Letsencrypt](https://letsencrypt.org/) [certbot](https://certbot.eff.org/docs/using.html) package.

The image is hosted on [Docker Hub](https://hub.docker.com/r/rgielen/httpd-image-proxy/).
Use `docker pull rgielen/httpd-image-proxy` to obtain the image.

You would want to extend the image with suitable config files, it does not make much sense to run it on its own.

## Supported Tags an Branches

  * `latest` Latest development
  * `16.10`, `16.10.01` Based on Ubuntu 16.10
