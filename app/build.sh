#!/bin/bash

TAG=$(grep version package.json |sed 's/  "version": "\([[:digit:]]\+\.[[:digit:]]\+\.[[:digit:]]\+\)",/\1/g')

docker build \
  -t avejidah/docker-swarm-example-app:latest \
  .

docker tag \
  avejidah/docker-swarm-example-app:latest \
  avejidah/docker-swarm-example-app:${TAG}

docker push avejidah/docker-swarm-example-app:latest
docker push avejidah/docker-swarm-example-app:${TAG}
