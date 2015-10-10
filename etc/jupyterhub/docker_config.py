c = get_config()

c.JupyterHub.spawner_class = 'dockerspawner.DockerSpawner'

c.JupyterHub.ip = '172.16.0.2'
c.JupyterHub.hub_ip = '172.16.0.2'
