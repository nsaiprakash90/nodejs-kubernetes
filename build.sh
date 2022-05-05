#!/bin/bash
# This script uilds the application image and pushes to docker registry.
docker build -t nodejs-helloworld-web-kubernetes:latest --no-cache .
docker tag nodejs-helloworld-web-kubernetes:latest docker.io/narasingu/nodejs-helloworld-web-kubernetes:latest
docker push docker.io/narasingu/nodejs-helloworld-web-kubernetes:latest
kubectl -n sai-narasingu create -f nodejs-helloworld-web.yaml