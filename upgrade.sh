#!/bin/bash

echo "Update du config.json"
read  -p "Nom du mineur = " MINERNAME
wget https://raw.githubusercontent.com/Arhkos/VerusCliMining/main/config.json -O ~/ccminer/config.json
echo "config.json copi  "
echo "Update de la config pour $MINERNAME"
sed '9s/SG10e/'$MINERNAME'/' ccminer/config.json
echo "Update du script autostartmining"
wget https://raw.githubusercontent.com/Arhkos/VerusCliMining/main/autostartmining.sh -O /etc/profile.d/autostartmining.sh
chmod +x /etc/profile.d/autostartmining.sh
echo "autostartmining ok "

echo "Update ok"
