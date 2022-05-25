#!/bin/bash
# This script cleans up the docker registry image and local image
kubectl -n sai-narasinu delete -f nodejs-helloworld-web.yaml
docker rmi -f docker.io/narasingu/nodejs-helloworld-web-kubernetes:05-24-22
docker rmi -f nodejs-helloworld-web-kubernetes:05-24-22
docker system prune --force