execute 'apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D'

remote_file '/etc/apt/sources.list.d/docker.list' do
  source '../etc/apt/sources.list.d/docker.list'
end

execute 'apt-get update'

execute 'apt-get purge lxc-docker*'

execute 'apt-cache policy docker-engine'

package 'docker-engine'
