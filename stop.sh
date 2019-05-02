#!/bin/sh
#path : /home/maroonsky/devel/bitbucket/maroonsky
sudo /etc/init.d/redis-server stop
sudo killall redis-server
sudo killall node
