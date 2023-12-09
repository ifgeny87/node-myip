#!/bin/bash
set -e

# Скрипт можно запускать из любой папки. При выполнении скрипт найдет Dockerfile и выполнит сборку.

# cd one up from script
cd $(dirname -- $0)/..
PRJROOT=$(pwd)
cd deploy

# build image
docker build --tag node-myip -f Dockerfile $PRJROOT

# run container
docker run -d \
--name=node-myip \
-p 127.0.0.1:3001:3001 \
--restart unless-stopped \
node-myip
