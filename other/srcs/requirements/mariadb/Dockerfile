# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vnaslund <vnaslund@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/18 19:55:42 by vnaslund          #+#    #+#              #
#    Updated: 2024/04/18 19:55:45 by vnaslund         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server
COPY ./config/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./config/init.sql /etc/mysql/init.sql

COPY ./tools/setupdb.sh /usr/bin/setupdb.sh

RUN chmod +x /usr/bin/setupdb.sh

RUN mkdir /run/mysqld

EXPOSE 3306

CMD ["/usr/bin/setupdb.sh"]