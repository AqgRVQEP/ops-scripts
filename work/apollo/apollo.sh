#!/bin/bash
# 1. 提前在apollo目录下修改好.env，设置好mysql 的 ip、port、user、password 
# 2. 提前在mysql导入好数据库，并修改好对应环境相关字段

# 中间件目录
MIDDLEWAREMIDDLEWARE_DIR=/data

# 创建中间件目录
sudo mkdir -p /$MIDDLEWAREMIDDLEWARE_DIR/apollo

sudo cp docker-compose.yml $MIDDLEWAREMIDDLEWARE_DIR/apollo
sudo cp ../.env $MIDDLEWAREMIDDLEWARE_DIR/apollo

cd /$MIDDLEWAREMIDDLEWARE_DIR/apollo && 

#sudo curl -L "https://raw.githubusercontent.com/ctripcorp/apollo/master/scripts/sql/apolloconfigdb.sql" -o apolloconfigdb.sql
#sudo curl -L "https://raw.githubusercontent.com/ctripcorp/apollo/master/scripts/sql/apolloportaldb.sql" -o apolloportaldb.sql 

/usr/bin/docker-compose up -d

exit