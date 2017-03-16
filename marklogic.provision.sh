#!/bin/bash
cd /vagrant/
yum update
yum install -y vim git tree wget curl unzip lsb-core-amd64 gdb libc.so.6 
if [ -f "/vagrant/jre-8u60-linux-x64.rpm" ]
then
        echo "jre-8u60-linux-x64.rpm exists"
else
        wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
          "http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jre-8u60-linux-x64.rpm"
fi

if [ -f "/vagrant/mlcp-8.0.6.3-bin.zip" ]
then
        echo "mlcp-8.0.6.3-bin.zip exists"
else
        wget http://developer.marklogic.com/download/binaries/mlcp/mlcp-8.0.6.3-bin.zip
fi

yum localinstall jre-8u60-linux-x64.rpm -y

rpm -i MarkLogic-RHEL6-8.0-6.x86_64.rpm

/etc/init.d/MarkLogic start

rm -rf /vagrant/mlcp-8.0.6.3

unzip /vagrant/mlcp-8.0.6.3-bin.zip

echo "export PATH=$PATH:/usr/local/git/bin:/vagrant/mlcp-8.0.6.3/bin" >> /etc/bashrc


