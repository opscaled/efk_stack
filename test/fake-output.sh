#!/bin/sh

docker run --name "Bottle" --rm \
    --log-driver=fluentd \
    --log-opt fluentd-address=localhost:24224 \
    --log-opt tag=docker.{{.Name}} \
    alpine echo "This is a test message from one container."
