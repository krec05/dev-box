# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
    config.vm.box = "krec/ubuntu2204-german"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
    config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
        vb.gui = true
      # Customize the name that appears in the VirtualBox GUI
        vb.name = "dev-box"
      # More customization options here: https://www.virtualbox.org/manual/ch08.html
    end

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # sync ansible files in vm
    config.vm.synced_folder "ansible", "/vagrant/ansible"

  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
    config.vm.provision "shell", inline: <<-SHELL
        su vagrant -c "cd /vagrant/ansible && ansible-playbook -v setup-dev-box.yml"
    SHELL
end