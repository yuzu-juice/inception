*This project has been created as part of the 42 curriculum by takitaga.*

# Developer documentation

## VM setup

All vm settings are placed in ./srcs/vm/ directory.
You can create an VM instance and connect it following commands.

```zsh
cd ./srcs/vm/
make up
make ssh
```

### Make command

There are some useful make commands in Makefile.

- `make up`
  - Configure and launch a instance automatically
  - You can see the created instance in your Oracle VM VirtualBox Manager

- `make ssh`
  - Make a connection to the instance via ssh

- `make halt`
  - Stop the instance

- `make destroy`
  - Delete the vm instance forcibly

## Containers setup

```zsh
make up
```

## Useful docker relevant commands

```zsh
docker ps # list running containers
docker ps -a # list containers include exited
docker images # list built images
docker exec -it [ps id] ash # run ash in running container
docker run --rm -it [image id] ash # run ash from built image
docker logs [ps id] # see logs
```

## Connect to mariadb

```zsh
mariadb --host=<hostname> --user=<username> --port=<port> --password <database name>
```

## Data persistance

In the project, data are stored in mariadb.
Mariadb related files are stored using volumes.
It means all data are stored in host machine.
