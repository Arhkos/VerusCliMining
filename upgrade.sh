
echo "Update du config.json"
wget https://raw.githubusercontent.com/Arhkos/VerusCliMining/main/config.json -O ~/ccminer/config.json

echo "Update du script autostartmining"
wget https://raw.githubusercontent.com/Arhkos/VerusCliMining/main/autostartmining.sh -0 /etc/profile.d/autostartmining.sh

Echo "Update terminée"
