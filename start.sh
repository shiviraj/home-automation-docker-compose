#!/bin/bash

if [ $1 == "up" ]; then
  if [ $2 == "seed" ]; then
    docker-compose -f docker-compose.yaml -f docker-compose-seed.yaml up -d
  else
    docker-compose up -d
  fi
else
    docker-compose -f docker-compose.yaml -f docker-compose-seed.yaml $1
fi
