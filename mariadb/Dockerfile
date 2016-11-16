#################################################################
# Dockerfile to build mariaDB container images for ROB5 Linux 2 #
# Based on ubuntu						#
#################################################################

#Set the base image to Ubuntu
From ubuntu

# File Author / Maintainer
MAINTAINER Jonas Andersen

#Update the repository sources list
RUN apt-get update
RUN apt-get upgrade -y

#Install MariaDB
RUN apt-get install mariadb-server -y
RUN /etc/init.d/mysql start &&\
	sleep 10s &&\
	echo "CREATE DATABASE abookdb;\
	USE abookdb;\
	CREATE TABLE addressbook (\
	equip_id int(5) NOT NULL AUTO_INCREMENT,\
	name varchar(50) DEFAULT NULL,\
	address varchar(50) DEFAULT NULL,\
	PRIMARY KEY(equip_id));\
	CREATE USER 'ubuntu' IDENTIFIED BY 'ubuntu';\
	GRANT SELECT, INSERT, UPDATE, DELETE ON addressbook TO 'ubuntu';"\
 	| mysql


#Set the ip of the only allowed connection
RUN   sed -i "s|bind-address		= 127.0.0.1|#bind-address		= 127.0.0.1|g" /etc/mysql/mariadb.conf.d/50-server.cnf

#Set command
CMD ["/usr/bin/mysqld_safe"]
