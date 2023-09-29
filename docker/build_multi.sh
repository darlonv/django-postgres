#!/bin/bash

VERSION="3"
NAME="django"
DOCKERHUB_USER="darlon"

PLATFORM="linux/amd64,linux/arm64"
# PLATFORM="linux/amd64"

IMAGE="${DOCKERHUB_USER}/${NAME}:${VERSION}"

docker buildx ls
docker buildx create --name multi_builder
docker buildx use multi_builder
docker buildx inspect --bootstrap

docker buildx build --no-cache --platform ${PLATFORM} -t ${IMAGE} --push .

docker buildx imagetools inspect ${IMAGE}
# docker run --rm docker.io/darlon/demo:latest@sha256:<hash> uname -m


#muda o builder para default
# docker buildx use default

#remove o multi_builder
# docker buildx rm multi_builder

