#!/bin/bash

set -e

cd "$(dirname "$0")"

docker compose --env-file ../../.env -f ../../docker-compose.yml down -v --remove-orphans

echo "Application shutdown successfully!"
