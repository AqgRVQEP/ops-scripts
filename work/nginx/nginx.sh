#!/bin/bash

# 中间件目录
MIDDLEWAREMIDDLEWARE_DIR=/data

# 创建中间件目录
sudo mkdir -p /$MIDDLEWAREMIDDLEWARE_DIR/nginx

sudo cp docker-compose.yml $MIDDLEWAREMIDDLEWARE_DIR/nginx
sudo cp ../.env $MIDDLEWAREMIDDLEWARE_DIR/nginx

# 复制配置文件和html文件到nginx
# sudo cp conf /data/nginx/conf.d
# sudo cp html /data/nginx/html
 
cd /$MIDDLEWAREMIDDLEWARE_DIR/nginx && /usr/bin/docker-compose up -d

exit
