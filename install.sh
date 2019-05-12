#!/bin/bash
echo "Check projects"

update(){
	cd $project
	git pull
	yarn
	npm update
	cd ..
}

cd ..
project="mar-binance-trader"
echo "[$project] CHECK"
if [ ! -d "$project" ]; then
	git clone git@bitbucket.org:maroonsky/mar-binance-trader.git
fi
update

project="mar-coin-advisor"
echo "[$project] CHECK"
if [ ! -d "$project" ]; then
	git clone git@bitbucket.org:maroonsky/mar-coin-advisor.git
fi
update

project="coin-viewer"
echo "[$project] CHECK"
if [ ! -d "$project" ]; then
	git clone git@github.com:securekim/coin-viewer.git
fi
update

