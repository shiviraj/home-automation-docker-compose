### Installation process

1. install docker and docker-compose

```sh
sudo apt-get update && sudo apt-get upgrade
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker [user_name]
sudo usermod -aG docker ${USER}
groups ${USER}
sudo apt-get install libffi-dev libssl-dev
sudo apt install python3-dev
sudo apt-get install -y python3 python3-pip
sudo pip3 install docker-compose
sudo systemctl enable docker
```

2. Clone the docker-compose repo

```shell
git clone https://github.com/shiviraj/home-automation-docker-compose.git
```

3. pull the images

```shell
docker-compose -f seed.yaml -f docker-compose.yaml pull
```

4. setup the env file

```shell
DATABASE_AUTH="shiviraj"
DB_URL="http://${DATABASE_AUTH}@raspberrypi-db-server:27017"
DB_NAME="home-automation"
SECRET_KEY=eyJ1c2VybmFtZSI6IklOVEVSTkFMX1VTRVIiLCJjcmVhdG
MQTT_USERNAME=shiviraj
MQTT_PASSWORD=Shiviraj2503
INTERNAL_TOKEN=eyJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6IklOVEVSTkFMX1VTRVIiLCJjcmVhdGVkQXQiOiIyMDIyLTA4LTMwVDA1OjAwOjQ5LjM1OFoiLCJleHBpcmVkQXQiOiIyMTIyLTA4LTMwVDA1OjAwOjQ5LjM1OFoifQ.uxjpl7v-Crt3DHHFd306KSDsxBVRtzrX4kYkUephZdI
CONF_PATH=./default.conf
DB_PATH=/home/shivi/raspberrypi-db
MQTT_PATH=/home/shivi/mosquitto
```

5. run init.sh
6. start seed container

```shell
docker-compose -f seed.yaml up
```

7. when all the seed successfully completed stop the containers
8. start all containers

```shell
docker-compose up -d
```

9. setup mqtt client

```shell
docker exec -it mqtt sh
mosquitto_passwd -c /mosquitto/conf/passwd shiviraj
```

10. restart mqtt
11. check the logs home-automation-service and the find the admin username and password
12. update the admin credentials

check if the application working fine


