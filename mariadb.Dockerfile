FROM mariadb:latest

COPY mariadb-init.sh /docker-entrypoint-initdb.d/
RUN chmod a+x /docker-entrypoint-initdb.d/mariadb-init.sh
