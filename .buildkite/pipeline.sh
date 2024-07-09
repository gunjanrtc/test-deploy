#!/usr/bin/env bash

SERVICE=$(buildkite-agent meta-data get SERVICE)

echo "$SERVICE"
# SERVICES=("blueprints" "authn2")
# echo "Next Service is $SERVICES"


# echo $SERVICE
# json_file="C:\\buildkite-agent\\builds\\RTC-DLLA48-1\\rtctek\\test-deploy\\.buildkite\\services.json"

# get_service_details() {
#     local service_name=$1
#     local detail=$2
#     jq -r --arg service "$service_name" --arg detail "$detail" '.[$service][$detail]'  $json_file
#     echo "in function : $service_name"
# }

for service_name in $SERVICE; do
    echo "service name = $service_name"
done
