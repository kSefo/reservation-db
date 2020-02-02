FROM mysql:5.7

RUN apt-get update
RUN apt-get install -y wget

COPY etc/mysql/mysql.conf.d/mysqld.cnf /etc/mysql/mysql.conf.d/
COPY etc/mysql/conf.d/mysql.cnf /etc/mysql/conf.d/
COPY sql /docker-entrypoint-initdb.d

CMD ["mysqld"]
