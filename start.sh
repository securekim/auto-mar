sudo killall redis-server
sudo killall node
sudo setcap cap_net_bind_service=+ep `readlink -f \`which node\``

redis-server --port 3212&
cd ../coin-viewer
NODE_ENV=dev node bin/www&
sleep 5
python -mwebbrowser http://127.0.0.1/coin
############################################
sleep 3
cd ../mar-binance-trader
NODE_ENV=simul-min node simul/index.js start&
sleep 1
cd ../mar-coin-advisor
NODE_ENV=simul-min node index.js start&
