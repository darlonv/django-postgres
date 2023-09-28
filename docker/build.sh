#!/bin/bash

VERSION="3"
NAME="django"
DOCKERHUB_USER="darlon"


IMAGE="${DOCKERHUB_USER}/${NAME}:${VERSION}"
IMAGE_LATEST="${DOCKERHUB_USER}/${NAME}"

docker build --no-cache -t ${IMAGE} .
docker tag ${IMAGE} ${IMAGE_LATEST}

docker login
# docker push ${IMAGE} 
# docker push ${IMAGE_LATEST}