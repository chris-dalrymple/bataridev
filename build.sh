#!/bin/bash

docker build -t bataridev -f Dockerfile .
docker run bataridev
