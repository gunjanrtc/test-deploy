#!/bin/bash

build() {
  echo "build of $SERVICE_NAME"
}

push() {
  echo "push of $SERVICE_NAME"
}

test() {
  echo "test of $SERVICE_NAME"
}

deploy() {
  env=$1
  echo "deploy of $SERVICE_NAME $env"
}

if [[ "$1" == "build" ]]; then
    build
elif [[ "$1" == "push" ]]; then
    push
elif [[ "$1" == "test" ]]; then
    test
elif [[ "$1" == "deploy" ]]; then
    deploy "$2"
fi