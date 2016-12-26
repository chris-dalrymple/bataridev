#!/bin/bash

if [ -d app ]; then
  rm -rf app
fi

docker build -t bataridev -f Dockerfile .
docker run bataridev > build.tar.gz
tar -xf build.tar.gz
