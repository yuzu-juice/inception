all: up

# Vagrant utils
v-init:
	vagrant init generic/ubuntu2204

v-up:
	vagrant up

v-ssh:
	vagrant ssh

v-halt:
	vagrant halt

v-destroy:
	vagrant destroy -f

up:
	docker compose up -d

down:
	docker compose down
