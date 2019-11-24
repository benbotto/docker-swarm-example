#!/bin/bash

TAG=$(<version.txt)

docker build \
  -t avejidah/docker-swarm-example-proxy:latest \
  .

docker tag \
  avejidah/docker-swarm-example-proxy:latest \
  avejidah/docker-swarm-example-proxy:${TAG}

docker push avejidah/docker-swarm-example-proxy:latest
docker push avejidah/docker-swarm-example-proxy:${TAG}
