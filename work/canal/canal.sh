#!/bin/bash

# 中间件目录
MIDDLEWAREMIDDLEWARE_DIR=/data

# 创建中间件目录
sudo mkdir -p /$MIDDLEWAREMIDDLEWARE_DIR/canal

sudo cp docker-compose.yml $MIDDLEWAREMIDDLEWARE_DIR/canal
sudo cp ../.env $MIDDLEWAREMIDDLEWARE_DIR/canal

cd /$MIDDLEWAREMIDDLEWARE_DIR/canal && /usr/bin/docker-compose up -d

exit
