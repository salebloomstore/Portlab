#!/bin/bash

set -e

cd "$(dirname "$0")"

docker compose --env-file ../../.env -f ../../server/portainer/docker-compose.yml up -d --build --force-recreate

echo "Application boot successfully!"
