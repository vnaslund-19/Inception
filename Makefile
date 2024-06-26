# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vnaslund <vnaslund@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/08 17:03:12 by vnaslund          #+#    #+#              #
#    Updated: 2024/05/28 17:27:36 by vnaslund         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

GREEN = \033[0;32m
RED = \033[0;31m
RESET = \033[0m

COMPOSE=./srcs/docker-compose.yml

up:
	@mkdir -p /home/vnaslund/data/wordpress /home/vnaslund/data/mariadb
	@docker-compose -f $(COMPOSE) up -d --build
	@echo "$(GREEN)Containers are up and running.$(RESET)"

down:
	@docker-compose -f $(COMPOSE) down -v
	@echo "$(RED)Containers are down.$(RESET)"

stop:
	@docker-compose -f $(COMPOSE) stop
	@echo "$(RED)Containers are stopped.$(RESET)"

clean:
	@sudo rm -rf data/

re: down up

.PHONY: up down stop clean re
