# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise64"

  config.vm.define :pandas do |vm_config|
    vm_config.vm.customize ["modifyvm", :id, "--memory", 256]
    vm_config.vm.host_name = "pandas.openpercept.piab"
    vm_config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      #chef.add_recipe "proxy"
      chef.add_recipe "apt"
      chef.add_recipe "build-essential"
      chef.add_recipe "python"
      chef.add_recipe "vim"
      chef.add_recipe "git"
      chef.add_recipe "pandas"
    end
  end
end
