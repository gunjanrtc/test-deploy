#!/bin/bash
# SERVICES=$(buildkite-agent meta-data get SERVICE)
# echo "all services are $SERVICES"
# Fetch the selected services from the input
# IFS=', ' read -ra SERVICES <<< "$(buildkite-agent meta-data get SERVICE)"
IFS=$'\n' read -d '' -ra SERVICES <<< "$(buildkite-agent meta-data get SERVICE)"
echo "All : $SERVICES"

# Loop through each service and export it as an environment variable
for SERVICE in "${SERVICES[@]}"; do
  export SERVICE_NAME="$SERVICE"
  echo "Exporting SERVICE_NAME=$SERVICE_NAME"
done
