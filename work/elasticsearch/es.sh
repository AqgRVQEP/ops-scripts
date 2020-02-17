#!/bin/bash

# 中间件目录
MIDDLEWAREMIDDLEWARE_DIR=/data
HOST_IP=$(ip address show |grep global|grep eth0|awk -F '[/ ]' '{print $6}')

# 创建中间件目录
mkdir -p /$MIDDLEWAREMIDDLEWARE_DIR/elasticsearch

cp docker-compose.yml $MIDDLEWAREMIDDLEWARE_DIR/elasticsearch

cd /$MIDDLEWAREMIDDLEWARE_DIR/elasticsearch && /usr/bin/docker-compose up -d