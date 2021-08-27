# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.box_download_insecure = true

  config.vm.network "forwarded_port", guest: 22,  host: 22222,  host_ip: '127.0.0.1',   id: 'ssh'
  config.vm.network "forwarded_port", guest: 3000,  host: 3000,  host_ip: '127.0.0.1',   id: 'web_node'

  config.vm.provider "virtualbox" do |vb|
    vb.name = "ubuntu-dev"
    vb.gui = false
    vb.memory = "2048"
  end

  config.vm.provision :shell, path: "provision/components/ubuntu/update.sh"
  config.vm.provision :shell, path: "provision/components/ubuntu/nodejs.sh"
  config.vm.provision :shell, path: "provision/components/ubuntu/yarn.sh"
  config.vm.provision :shell, path: "provision/components/ubuntu/apache.sh"
  config.vm.provision :shell, path: "provision/components/ubuntu/php.sh"
  config.vm.provision :shell, path: "provision/components/ubuntu/mysql.sh"
  config.vm.provision :shell, path: "provision/components/ubuntu/phpmyadmin.sh"
  config.vm.provision :shell, run: 'always', path: "provision/components/ubuntu/run.sh"

end
