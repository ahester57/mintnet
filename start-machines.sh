#!/bin/bash

docker-machine start myvm1 && \
docker-machine start myvm2 && \
docker-machine start myvm3
eval $(docker-machine env myvm1)
