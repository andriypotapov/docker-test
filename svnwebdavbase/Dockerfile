FROM ubuntu:16.04
MAINTAINER Andriy Potapov <andriypotapov@gmail.com>

# Install apache2; subversion (includes mod_svn) and mod_perl2
RUN apt update; \
	apt-get -y install apache2 subversion libapache2-svn libapache2-mod-perl2; \
	apt remove autoremove; \
	apt-get purge -y;

# Enable newly installed modules
RUN a2enmod proxy proxy_http authnz_ldap dav dav_svn authz_svn perl

EXPOSE 80

CMD /usr/sbin/apache2ctl -D FOREGROUND
