# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vnaslund <vnaslund@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/17 17:58:14 by vnaslund          #+#    #+#              #
#    Updated: 2024/04/17 17:58:40 by vnaslund         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && apt-get install -y \
							nginx \
							openssl

WORKDIR /etc/nginx

COPY ./config/nginx.conf /etc/nginx/conf.d

RUN mkdir /etc/nginx/ssl
COPY ./config/ssl/vnaslund.crt /etc/nginx/ssl/vnaslund.crt
COPY ./config/ssl/vnaslund.key /etc/nginx/ssl/vnaslund.key

RUN mkdir -p /run/nginx

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]