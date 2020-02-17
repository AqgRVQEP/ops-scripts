#!/bin/bash

# 中间件目录
MIDDLEWAREMIDDLEWARE_DIR=/data

# 创建中间件目录
sudo mkdir -p /$MIDDLEWAREMIDDLEWARE_DIR/consul

sudo cp docker-compose.yml $MIDDLEWAREMIDDLEWARE_DIR/consul
sudo cp ../.env $MIDDLEWAREMIDDLEWARE_DIR/consul

cd /$MIDDLEWAREMIDDLEWARE_DIR/consul && /usr/bin/docker-compose up -d

exit
