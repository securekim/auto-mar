#!/bin/sh
#path : /home/maroonsky/devel/bitbucket/maroonsky

###########DEBUG 할 때 주석 해제###############
#/etc/init.d/redis-server stop
###########DEBUG 시 주석 처리 할 것#########
sudo killall redis-server
sudo killall node
sudo setcap cap_net_bind_service=+ep `readlink -f \`which node\``
cd ../coin-viewer
NODE_ENV=dev node bin/www&
sleep 5
python -mwebbrowser http://127.0.0.1/coin 
############################################
sleep 3
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
