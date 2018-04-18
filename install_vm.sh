#!/bin/bash

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get -y update
sudo apt-get -y install openjdk-7-jdk
sudo apt-get -y install unzip
sudo apt-get -y install zip
sudo apt-get -y install vim
sudo apt-get -y install htop

sudo apt-get -y install tomcat7
sudo apt-get -y install tomcat7-admin

sudo rm /etc/tomcat7/tomcat-users.xml
sudo cp tomcat-users.xml /etc/tomcat7/
sudo service tomcat7 restart
wget http://mirror.downloadvn.com/apache//activemq/5.14.5/apache-activemq-5.14.5-bin.tar.gz

tar zxf apache-activemq-5.14.5-bin.tar.gz

sudo rm apache-activemq-5.14.5/conf/jetty-realm.properties

sudo cp jetty-realm.properties apache-activemq-5.14.5/conf/

/home/ubuntu/apache-activemq-5.14.5/bin/activemq start
