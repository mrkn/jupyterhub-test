package 'npm'
package 'nodejs-legacy'

execute 'Install configurable-http-proxy' do
  command 'npm install -g configurable-http-proxy'
end

package 'python3-pip'

execute 'pip3 install jupyterhub'
execute 'pip3 install jupyter'
