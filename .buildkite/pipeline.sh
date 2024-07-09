#!/usr/bin/env bash

SERVICE=$(buildkite-agent meta-data get SERVICE)

echo "Service is $SERVICE"
SERVICES=("blueprints" "authn2")
echo "Next Service is $SERVICES"


# echo $SERVICE
# json_file="C:\\buildkite-agent\\builds\\RTC-DLLA48-1\\rtctek\\test-deploy\\.buildkite\\services.json"

# get_service_details() {
#     local service_name=$1
#     local detail=$2
#     jq -r --arg service "$service_name" --arg detail "$detail" '.[$service][$detail]'  $json_file
#     echo "in function : $service_name"
# }

# for SERVICE in "${SERVICES[@]}"; do
#     echo "Fetching details for service: $SERVICE"
#     # Example: Get region detail for each service
#     region=$(get_service_details "$SERVICE" "region")
#     echo "Region: $region"
#     # Add more operations as needed for each service
# done
