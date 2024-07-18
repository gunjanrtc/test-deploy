#!/bin/bash

# Fetch the selected services from the input
IFS=', ' read -ra SERVICES <<< "$(buildkite-agent meta-data get SERVICE)"
echo "All : $SERVICES"
# Loop through each service and export it as an environment variable
for SERVICE in "${SERVICES[@]}"; do
  export SERVICE_NAME="$SERVICE"
  echo "Exporting SERVICE_NAME=$SERVICE_NAME"
done

# Continue with the rest of your pipeline script...
