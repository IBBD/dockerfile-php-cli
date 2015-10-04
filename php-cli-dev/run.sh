#!/bin/bash
# 

name=php-cli-dev
sudo docker stop ibbd-$name
sudo docker rm ibbd-$name

sudo docker --debug run -ti --name --rm ibbd-$name \
    -v /var/www:/var/www \
    ibbd/$name \
    /bin/bash

