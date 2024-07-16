#!/bin/bash

set -euo pipefail

export IMAGE_NAME=${IMAGE_NAME+x:raspberrypi3-debian}
export IMAGE_TAG=${DOCKER_IMAGE_TAG+x:bookworm}

cat docker/Dockerfile.template | envsubst > docker/Dockerfile
