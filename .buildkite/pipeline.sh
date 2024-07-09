#!/usr/bin/env bash

# Function to retrieve service names from Buildkite metadata
get_service_names() {
    local services=$(buildkite-agent meta-data get SERVICE)
    echo "$services"
}

# Example usage of the function
service_names=$(get_service_names)

# Print service names for verification
echo "Service names: $service_names"

# Upload service names to Buildkite as pipeline metadata
buildkite-agent pipeline upload <<EOF
{
  "env": {
    "SERVICE_NAMES": "$service_names"
  }
}
EOF
