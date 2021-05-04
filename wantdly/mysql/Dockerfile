FROM mysql/mysql-server:8.0.20

ENV TZ Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && chown -R mysql:root /var/lib/mysql/

COPY my.cnf /etc/mysql/conf.d/my.cnf
COPY docker-entrypoint-initdb.d/init.sql /docker-entrypoint-initdb.d/

CMD ["mysqld"]

EXPOSE 3306