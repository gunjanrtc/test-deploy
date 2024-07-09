#!/usr/bin/env bash

SERVICE=$(buildkite-agent meta-data get SERVICE)

echo "$SERVICE"


for service_name in $SERVICE; do
    echo "service name = $service_name"
done
