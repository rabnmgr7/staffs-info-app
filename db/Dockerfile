FROM mysql:latest
#Set environment variables from .env file

ENV MYSQL_ROOT_PASSWORD=Rabin@123
ENV MYSQL_DATABASE=employee
ENV MYSQL_USER=rabin
ENV MYSQL_PASSWORD=Rabin@123

# Copy environment variables from .env file
#COPY ./.env /tmp/env-file
#RUN . /tmp/env-file && rm /tmp/env-file

RUN { \
        echo '[mysqld]'; \
        echo 'default_authentication_plugin=mysql_native_password'; \
    } > /etc/mysql/conf.d/docker.cnf
EXPOSE 3306

ADD setup.sql /docker-entrypoint-initdb.d
