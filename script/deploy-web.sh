#!/bin/bash

docker stop sletter-be-web
docker rm sletter-be-web
docker rmi zxcv9203/sletter-be-web

docker run -it --name sletter-be-web -p8080:8080 -v /etc/localtime:/etc/localtime:ro -v /usr/share/zoneinfo/Asia/Seoul:/etc/timezone:ro -d zxcv9203/sletter-be-web