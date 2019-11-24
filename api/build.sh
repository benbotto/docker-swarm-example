#!/bin/bash

TAG=$(grep version package.json |sed 's/  "version": "\([[:digit:]]\+\.[[:digit:]]\+\.[[:digit:]]\+\)",/\1/g')

docker build \
  -t avejidah/docker-swarm-example-api:latest \
  .

docker tag \
  avejidah/docker-swarm-example-api:latest \
  avejidah/docker-swarm-example-api:${TAG}

docker push avejidah/docker-swarm-example-api:latest
docker push avejidah/docker-swarm-example-api:${TAG}
