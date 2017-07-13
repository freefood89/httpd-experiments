FROM httpd

RUN apt-get update && apt-get install -y \
	libapache2-mod-auth-openidc \
	libapache2-modsecurity \
	libapache2-mod-proxy-html

COPY httpd.conf /usr/local/apache2/conf/httpd.conf