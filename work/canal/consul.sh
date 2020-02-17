#!/bin/bash

# 中间件目录
MIDDLEWAREMIDDLEWARE_DIR=/data

IP=$(ip address show |grep global|grep eth0|awk -F '[/ ]' '{print $6}')
echo "HOST_IP=${IP}" > .env

# 创建中间件目录
sudo mkdir -p /$MIDDLEWAREMIDDLEWARE_DIR/consul

sudo cp docker-compose.yml $MIDDLEWAREMIDDLEWARE_DIR/consul

cd /$MIDDLEWAREMIDDLEWARE_DIR/consul && /usr/bin/docker-compose up -d

exit
