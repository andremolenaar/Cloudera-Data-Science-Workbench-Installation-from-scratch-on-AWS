#!/bin/bash

# Setup Director as the source NTP server
yum install -y ntp
systemctl start ntpd
systemctl enable ntpd

# Add Cloudera Director repo
yum install -y wget git
wget --directory-prefix=/etc/yum.repos.d/ http://archive.cloudera.com/director/redhat/7/x86_64/director/cloudera-director.repo
sed -i.bak 's/director\/2/director\/2.5.1/g' /etc/yum.repos.d/cloudera-director.repo

# Install JDK and Cloudera Director Client & Server
yum install -y oracle-j2sdk1.8.x86_64
yum install -y cloudera-director-server cloudera-director-client

# Start Cloudera Director Service
service cloudera-director-server start

