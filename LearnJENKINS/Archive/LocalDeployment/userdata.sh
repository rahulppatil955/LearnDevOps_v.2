#!/bin/bash
yum install git maven -y
cd /tmp
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u141-b15/336fa29ff2bb4ef291e347e091f7f4a7/jdk-8u141-linux-x64.rpm
rpm install jdk-8u141-linux-x64.rpm
mkdir /local/apps/jenkins /local/apps/jenkins/home /local/apps/jenkins/webroot /local/apps/tomcat -p
cd /tmp
wget https://downloads.apache.org/tomcat/tomcat-10/v10.0.0-M4/bin/apache-tomcat-10.0.0-M4.zip
unzip apache-tomcat-10.0.0-M4.zip
cd /tmp/apache-tomcat-10.0.0-M4/
mv * /local/apps/tomcat
chmod 755 /local/apps/tomcat/bin/*
sh -x /local/apps/tomcat/bin/startup.sh
cd /local/apps/jenkins
wget http://ftp-nyc.osuosl.org/pub/jenkins/war-stable/2.204.2/jenkins.war
chown ec2-user:ec2-user /local/apps/* -R