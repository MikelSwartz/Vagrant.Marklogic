# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

#  config.vm.box = "kaorimatz/centos-6.8-x86_64"
  config.vm.box = "bmcgonigle/centos68"

  # config.vm.box_check_update = false

  config.vm.network "forwarded_port", guest: 7999, host: 7999
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "forwarded_port", guest: 8001, host: 8001
  config.vm.network "forwarded_port", guest: 8003, host: 8003
  
  config.vm.provision "shell",
    inline: "yum install lsb-core-amd64 gdb libc.so.6 vim -y;cd /vagrant/;rpm -i MarkLogic-RHEL6-8.0-6.x86_64.rpm;/etc/init.d/MarkLogic start"

end
