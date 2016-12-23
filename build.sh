#!/bin/bash

/usr/bin/docker build -t bataridev -f Dockerfile .
/usr/bin/docker run bataridev > build.tar.gz
