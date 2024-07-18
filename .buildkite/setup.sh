#!/bin/bash
# echo "In setup.sh"
# SERVICE_NAME=$(buildkite-agent meta-data get SERVICE)
# echo "service name : $SERVICE_NAME"
# case "$SERVICE_NAME" in
#   "blueprints")
#     echo "Executing commands for Service A..."
#     $PIPELINE_SCRIPT build
#     $PIPELINE_SCRIPT test
#     $PIPELINE_SCRIPT push
#     $PIPELINE_SCRIPT deploy dev
#     ;;
#   "authn2")
#     echo "Executing commands for Service B..."
#     $PIPELINE_SCRIPT build
#     $PIPELINE_SCRIPT test
#     $PIPELINE_SCRIPT push
#     $PIPELINE_SCRIPT deploy production
#     ;;
#   *)
#     echo "Unknown service: $SERVICE_NAME"
#     exit 1
#     ;;
# esac



echo "In setup.sh"
SERVICE_NAME=$(buildkite-agent meta-data get SERVICE)
while IFS= read -r $SERVICE_NAME; do
  echo "service name : $SERVICE_NAME"
  case "$SERVICE_NAME" in
    "blueprints")
      echo "Executing commands for Service A..."
      $PIPELINE_SCRIPT build
      $PIPELINE_SCRIPT test
      $PIPELINE_SCRIPT push
      $PIPELINE_SCRIPT deploy dev
      ;;
    "authn2")
      echo "Executing commands for Service B..."
      $PIPELINE_SCRIPT build
      $PIPELINE_SCRIPT test
      $PIPELINE_SCRIPT push
      $PIPELINE_SCRIPT deploy production
      ;;
    *)
      echo "Unknown service: $SERVICE_NAME"
      exit 1
      ;;
  esac
done