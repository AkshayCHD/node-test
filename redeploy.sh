#!/bin/bash
docker pull akshaychd/node-test:latest
docker stop node-test
docker system prune -f
docker run -d --name=node-test -p 5000:5000 akshaychd/node-test:latest
