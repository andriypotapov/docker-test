# docker-test
Embarking on docker jorney. Test to see if I manage to lump all my development tool support servers in one nice docker eco system.

Intend is create very simple to maintain set of servers to support build process of java applications.
- openldap as test LDAP server
  not stable, initial configuration is a challenge

- svn fronted by apache2 with LDAP authentication (still using local file for groups and permissions) 
  not all required apache2 modules available on all OS, sticking with Ubuntu for now

- artifactory as maven repository with LDAP authentication
  must have external volume or bound folder to store all the data, met-date is not  big concern since it can be recreated, must have external configuration file

- sonar as code quality control with LDAP authentication
  external mount for configuration and database

- nginx as web proxy that serves project documentation and proxy to all other services via nice human readable name
  external configuration file
