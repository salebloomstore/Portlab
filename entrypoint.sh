#!/bin/bash

set -e

if [ ! -f /data/portainer.db ]; then
    echo "Initializing Portainer admin..."

    HASH=$(htpasswd -nbBC 10 "" "$PORTAINER_ADMIN_PASSWORD" | cut -d: -f2)

    exec /portainer \
        --admin-password "$HASH"
fi

echo "Portainer already initialized."

exec /portainer
