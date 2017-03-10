# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "bmcgonigle/centos68"

  config.vm.network "forwarded_port", guest: 7999, host: 7999
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "forwarded_port", guest: 8001, host: 8001
  config.vm.network "forwarded_port", guest: 8003, host: 8003
  
  config.vm.provision "shell",
    path: "marklogic.provision.sh"
#    inline: "yum install lsb-core-amd64 gdb libc.so.6 vim -y;cd /vagrant/;rpm -i MarkLogic-RHEL6-8.0-6.x86_64.rpm;/etc/init.d/MarkLogic start"
#http://developer.marklogic.com/download/binaries/mlcp/mlcp-8.0.6.3-bin.zip
end
