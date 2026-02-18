all: up

BASE_DIR := srcs
COMPOSE := docker compose

up:
	cd $(BASE_DIR) && $(COMPOSE) build && $(COMPOSE) up -d

down:
	cd $(BASE_DIR) && $(COMPOSE) down
