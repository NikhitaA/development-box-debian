# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define 'default', primary: true do |default|
    default.vm.box = "bento/debian-9"

    default.vm.hostname = "development-box-debian"
    default.vm.network :private_network, ip: '10.3.1.3'

    default.cache.scope = :machine

    default.vm.provider :virtualbox do |vb|
      vb.memory = 2048
      vb.cpus = 2
    end
  end

  config.vm.define 'provisioner' do |provisioner|
    provisioner.vm.box = "bento/debian-9"

    provisioner.vm.hostname = "provisioner"
    provisioner.vm.network :private_network, ip: '10.3.1.2'

    provisioner.vm.provision "shell", path: "bash/provisioner.sh"

    provisioner.cache.scope = :machine
  end
end
