# jupyterhub-test

## Requirements

- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)
- [vagrant-itamae](https://github.com/chiastolite/vagrant-itamae)
- [vagrant-multiplug](https://github.com/r7kamura/vagrant-multiplug)

## Setup

```
$ vagrant up
$ vagrant reload --provision
```

## Launch JupyterHub

```
$ vagrant ssh -c 'sudo jupyterhub --ip=172.16.0.2'
```

## Access JupyterHub

http://172.16.0.2:8000/
