#!/bin/sh

set -e
  
# $(ip route | awk '/docker/ { print $NF }')

export DOCKER_HOST_IP=127.0.0.1
docker-compose stop
docker-compose rm -f
docker-compose up -d --force-recreate
sleep 5
sh ./grafana/provision-grafana.sh
