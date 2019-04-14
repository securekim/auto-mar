#!/bin/sh
#path : /home/maroonsky/devel/bitbucket/maroonsky
killall node
sudo killall redis-server
#/etc/init.d/redis-server stop

cd ../mar-coin-advisor
NODE_ENV=simul-min node index.js start&
sleep 1
cd ../mar-binance-trader
NODE_ENV=simul-min node simul/index.js start&
#python -mwebbrowser http://127.0.0.1:3220/viewes > mar-coin-advisor.log &2

#FOR REAL
#cd ../mar-coin-advisor
#NODE_ENV=prod node index.js start&
#export BINANCE_KEY=dain@925
#cd ../mar-binance-trader
#NODE_ENV=prod node index.js start&
