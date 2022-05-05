#!/bin/bash
# This script cleans up the docker registry image and local image
kubectl -n apps delete -f nodejs-helloworld-web.yaml
docker rmi -f docker.io/narasingu/nodejs-helloworld-web-kubernetes:latest
docker rmi -f nodejs-helloworld-web-kubernetes:latest
docker system prune --force