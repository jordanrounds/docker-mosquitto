#!/bin/bash
echo "Installing Eclipse Mosquitto"
CONFIG_DIR="config"
LOG_DIR="log"
DATA_DIR="data"

mkdir $CONFIG_DIR
mkdir $LOG_DIR
mkdir $DATA_DIR

chown -R 1883:1883 $LOG_DIR
chown -R 1883:1883 $DATA_DIR

echo
echo "Directories created and permissions updated"

cat <<EOF >config/mosquitto.conf
persistence true
persistence_location /mosquitto/data

log_dest file /mosquitto/log/mosquitto.log

password_file /mosquitto/config/mosquitto.passwd
allow_anonymous false

listener 1883

listener 9001
protocol websockets
EOF

echo
echo "Default config file setup: config/mosquitto.config"
echo

docker-compose build
docker-compose up -d
