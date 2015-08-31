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
      
      config.vm.synced_folder "/home/tzookb/www", "/web", create: true, owner: "vagrant", group: "www-data", mount_options: ["dmode=775,fmode=775"]
  end

end
