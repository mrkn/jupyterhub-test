Vagrant.configure("2") do |config|
  config.plugin.add_dependency 'itamae-plugin-recipe-docker'

  config.vm.box = "ubuntu/trusty64"
  config.vm.network 'private_network', ip: '172.16.0.2'
  config.vm.provision :itamae do |itamae_config|
    itamae_config.sudo = true
    itamae_config.recipes = 'itamae.rb'
  end
end

# vim: ft=ruby
