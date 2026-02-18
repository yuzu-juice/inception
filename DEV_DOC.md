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

### Connect to containers

```zsh
docker exec -it [ps id] ash
docker run -it [image id] ash
```

## Connect to mariadb

```zsh
mysql --host=localhost --user=dbuser --port=3306 --password defaultdb
```
