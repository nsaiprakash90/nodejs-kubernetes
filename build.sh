#!/bin/bash
# This script uilds the application image and pushes to docker registry.
docker build -t nodejs-helloworld-web-kubernetes:05-24-22 --no-cache .
docker tag nodejs-helloworld-web-kubernetes:05-24-22 docker.io/narasingu/nodejs-helloworld-web-kubernetes:05-24-22
docker push docker.io/narasingu/nodejs-helloworld-web-kubernetes:05-24-22
kubectl -n sai-narasingu create -f nodejs-helloworld-web.yaml