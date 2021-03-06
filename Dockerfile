FROM mariadb:latest
USER root
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install apt-utils
RUN apt-get install -y liblz4-dev
RUN apt-get install -y mariadb-plugin-rocksdb
RUN rm -rf /var/cache/apt/lists/*
ADD config-file.cnf /etc/mysql/conf.d/config-file.cnf