# jupyterhub-test

## Requirements

- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)
- [vagrant-itamae](https://github.com/chiastolite/vagrant-itamae)

## Setup

```
$ vagrant up
```

## Launch JupyterHub

```
$ vagrant ssh -c 'sudo jupyterhub --ip=172.16.0.2'
```

## Access JupyterHub

http://172.16.0.2:8000/
