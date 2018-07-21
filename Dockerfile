FROM mariadb:latest

USER root
RUN export DEBIAN_FRONTEND=noninteractive && apt-get update
RUN export DEBIAN_FRONTEND=noninteractive && apt-get install -y liblz4-dev
RUN export DEBIAN_FRONTEND=noninteractive && apt-get install -y mariadb-plugin-rocksdb
RUN export DEBIAN_FRONTEND=noninteractive && rm -rf /var/cache/apt/lists/*
ADD config-file.cnf /etc/mysql/conf.d/config-file.cnf