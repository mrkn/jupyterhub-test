package 'npm'
package 'nodejs-legacy'

execute 'Install configurable-http-proxy' do
  command 'npm install -g configurable-http-proxy'
end

package 'python3-pip'

execute 'pip3 install jupyter'

execute 'pip3 install jupyterhub'

git 'dockerspawner' do
  repository 'https://github.com/jupyter/dockerspawner.git'
end

execute 'cd dockerspawner; pip3 install -r requirements.txt'

execute 'cd dockerspawner; python3 setup.py install'

directory '/etc/jupyterhub'

remote_file '/etc/jupyterhub/docker_config.py' do
  source '../etc/jupyterhub/docker_config.py'
end

execute 'docker pull jupyter/singleuser'
execute 'docker pull jupyter/systemuser'

remote_file '/home/vagrant/run.sh' do
  source '../home/vagrant/run.sh'
  mode '755'
end
