#!/bin/bash

SERVICE_NAME=$1

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