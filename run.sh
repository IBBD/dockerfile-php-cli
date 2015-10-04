#!/bin/bash
# 

#----------------------------------------
#------- 配置信息 BEGIN -----------------
#----------------------------------------

# 代码目录
code_path=/var/www

# 日志目录
logs_path=/var/log/php

#----------------------------------------
#------- 配置信息 END -------------------
#----------------------------------------

current_path=$(pwd)
if [ ! -f $current_path/conf/php.ini ]
then
    echo "ERROR: $current_path is error."
    exit 1
fi

sudo docker run --name=ibbd-php-cli -ti --rm \
    -v $code_path:/var/www \
    -v $logs_path:/var/log/php \
    -v $current_path/conf/php.ini:/usr/local/etc/php/php.ini:ro \
    -w /var/www \
    ibbd/php-cli \
    /bin/bash 

