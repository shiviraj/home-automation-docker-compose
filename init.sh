#!/bin/bash

mkdir -p ~/mosquitto/config ~/mosquitto/data ~/mosquitto/log ~/raspberrypi-db
echo 'persistence true
persistence_location /mosquitto/data
user mosquitto
listener 1883
allow_anonymous false
log_dest stdout
log_dest file /mosquitto/log/mosquitto.log
connection_messages true
password_file /mosquitto/config/pwfile' >> ~/mosquitto/config/mosquitto.conf
