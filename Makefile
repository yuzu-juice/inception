all: up

BASE_DIR := srcs
COMPOSE := docker compose

up:
	cd $(BASE_DIR) && $(COMPOSE) up -d --build

down:
	cd $(BASE_DIR) && $(COMPOSE) down
