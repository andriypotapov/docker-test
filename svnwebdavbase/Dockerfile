FROM ubuntu:16.04
MAINTAINER Andriy Potapov <andriypotapov@gmail.com>

# Install apache2; subversion (includes mod_svn) and mod_perl2
RUN apt update; \
	apt-get -y install apache2 subversion libapache2-svn libapache2-mod-perl2; \
	apt remove autoremove; \
	apt-get purge -y;

# Enable newly installed modules
RUN a2enmod dav_svn authnz_ldap perl

# COPY our self-signed CA authority root certificates 
# COPY ./usr/local/share/ca-certificates /usr/local/share/ca-certificates
# RUN update-ca-certificates --fresh

EXPOSE 80

CMD /usr/sbin/apache2ctl -D FOREGROUND
