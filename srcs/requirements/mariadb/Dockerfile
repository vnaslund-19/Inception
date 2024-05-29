FROM debian:buster

RUN apt update
RUN apt install -y mariadb-server

# Copy files from host machine into docker image
COPY conf/mysqld.cnf /etc/mysql/mariadb.conf.d/mysqld.cnf

COPY conf/create.sh /tmp/create.sh
RUN chmod +x /tmp/create.sh

EXPOSE 3306

CMD [ "/tmp/create.sh" ]