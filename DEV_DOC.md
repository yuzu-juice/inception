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

## Ref

https://qiita.com/M_Ando_abc/items/740c9e84abaf89fc625f
https://developer.hashicorp.com/vagrant/docs/boxes
https://portal.cloud.hashicorp.com/vagrant/discover/bento/ubuntu-22.04
https://qiita.com/shiro01/items/c5a956de9e638acb3beb
https://qiita.com/tbpgr/items/67125ea883409ae5fd51
https://docs.docker.com/engine/install/ubuntu/
https://tsyama.hatenablog.com/entry/docker-vagrant
https://qiita.com/kaihei777/items/82dd6626ee7f2aecbe66
https://www.naka-sys.okinawa/docker-nginx-container/
https://hub.docker.com/_/alpine
https://qiita.com/nimo1/items/5114bcfa0f780d0205e3
https://www.cyberciti.biz/faq/how-to-install-nginx-web-server-on-alpine-linux/
https://zenn.dev/nobuuu/articles/4163bd8d294afc
https://zenn.dev/botamotch/scraps/43f6b5e560137f
https://qiita.com/yuya_sega/items/a4bd9a0531c0d10c5b3d
https://docs.docker.com/reference/build-checks/json-args-recommended/
https://devops-blog.virtualtech.jp/entry/20250127/1737936341
