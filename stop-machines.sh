#!/bin/bash

docker-machine stop myvm3 && \
docker-machine stop myvm2 && \
docker-machine stop myvm1
eval $(docker-machine env -u)
