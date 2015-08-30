# Defines our Vagrant environment
#
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # create mgmt node
  config.vm.define :ansible do |config|
      config.vm.box = "hashicorp/precise32"
      config.vm.hostname = "ansible"
      config.vm.network :private_network, ip: "192.168.30.30"
      config.vm.provider "virtualbox" do |vb|
        vb.memory = "256"
      end
  end

end
