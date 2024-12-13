#! /usr/bin/env bash

set -e

config=$1

echo "### use config $config"

if [ -f $config ]; then
    docker-compose -f $config --env-file .env up -d
else 
    echo "### file $config no exsit "
fi