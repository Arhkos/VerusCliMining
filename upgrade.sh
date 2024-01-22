#!/bin/bash

echo "Update du config.json"
read  -p "Nom du mineur = " MINERNAME
wget https://raw.githubusercontent.com/Arhkos/VerusCliMining/main/config.json -O ~/ccminer/config.json
echo "config.json copi  "
echo "Update de la config pour $MINERNAME"
sed "9s/SG10e/'$MINERNAME'/" ccminer/config.json
echo "screen -dmS miner ccminer/start.sh" > ~/g.sh
chmod +x ~/g.sh


echo "Update ok"
