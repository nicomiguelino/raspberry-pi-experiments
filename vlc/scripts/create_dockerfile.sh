#!/bin/bash

set -euo pipefail

export IMAGE_NAME=${IMAGE_NAME:-raspberrypi3-debian}
export IMAGE_TAG=${IMAGE_TAG:-bookworm}

echo "IMAGE_NAME: $IMAGE_NAME"
echo "IMAGE_TAG: $IMAGE_TAG"

cat docker/Dockerfile.template | envsubst > docker/Dockerfile
