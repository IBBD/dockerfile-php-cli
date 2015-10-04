#!/bin/bash

# 清除已有的
sudo docker stop ibbd-php-cli
sudo docker rm ibbd-php-cli 
sudo docker rmi ibbd/php-cli 

# 重新生成
sudo docker build -t ibbd/php-cli ./

