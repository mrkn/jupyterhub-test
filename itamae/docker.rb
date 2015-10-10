execute 'apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D'

file "/etc/apt/sources.list.d/docker.list" do
  content <<-END_DOCKER_LIST
deb https://apt.dockerproject.org/repo ubuntu-trusty main
  END_DOCKER_LIST
end

execute 'apt-get update'

execute 'apt-get purge lxc-docker*'

execute 'apt-cache policy docker-engine'

package 'docker-engine'
