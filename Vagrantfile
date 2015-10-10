Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network 'private_network', ip: '172.16.0.2'
  config.vm.provision :itamae do |itamae_config|
    itamae_config.sudo = true
    itamae_config.recipes = %w[
      ./itamae/update.rb
      ./itamae/jupyterhub.rb
    ]
  end
end

# vim: ft=ruby
