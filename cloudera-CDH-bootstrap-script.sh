#!/bin/bash

# Setup Director as the source NTP server
yum install -y ntp
systemctl start ntpd
systemctl enable ntpd

# Add Cloudera Director repo
yum install -y wget
wget --directory-prefix=/etc/yum.repos.d/ http://archive.cloudera.com/director/redhat/7/x86_64/director/cloudera-director.repo
sed -i.bak 's/director\/2/director\/2.5.1/g' /etc/yum.repos.d/cloudera-director.repo

# Install JDK
yum install -y oracle-j2sdk1.8.x86_64

# Change symbolink to JDK 8
JAVA_HOME=/usr/java/jdk1.8.0_121-cloudera
alternatives --install /usr/bin/java java ${JAVA_HOME:?}/bin/java 10
alternatives --install /usr/bin/javac javac ${JAVA_HOME:?}/bin/javac 10
ln -nfs ${JAVA_HOME:?} /usr/java/latest
ln -nfs /usr/java/latest /usr/java/default

# Add JAVA_HOME environment
sh -c "echo export JAVA_HOME=/usr/java/jdk1.8.0_121-cloudera >> /etc/environment"
sh -c "echo export JAVA_HOME=/usr/java/jdk1.8.0_121-cloudera >> /root/.bash_profile"
