#!/bin/bash

sudo mkdir -p ~/mosquitto/config ~/mosquitto/data ~/mosquitto/log ~/raspberrypi-db
sudo echo 'persistence true
persistence_location /mosquitto/data
user mosquitto
listener 1883
allow_anonymous false
log_dest stdout
log_dest file /mosquitto/log/mosquitto.log
connection_messages true
password_file /mosquitto/config/pwfile' >> ~/mosquitto/config/mosquitto.conf
sudo touch ~/mosquitto/config/pwfile
