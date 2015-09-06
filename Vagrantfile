# Defines our Vagrant environment
#
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|


    config.vm.define :web do |config|
        config.vm.box = "hashicorp/precise64"
        config.vm.hostname = "web"
        config.vm.network :private_network, ip: "10.0.15.10"
        config.vm.provider "virtualbox" do |vb|
          vb.memory = "2048"
        end

        config.vm.synced_folder "/home/tzookb/www", "/web", create: true, owner: "vagrant", group: "www-data", mount_options: ["dmode=775,fmode=775"]
    end


    config.vm.define :mysql do |config|
      config.vm.box = "hashicorp/precise64"
      config.vm.hostname = "mysql"
      config.vm.network :private_network, ip: "10.0.15.21"
      config.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
      end

      config.vm.synced_folder "/home/tzookb/www", "/web", create: true, owner: "vagrant", group: "www-data", mount_options: ["dmode=775,fmode=775"]
    end

end
