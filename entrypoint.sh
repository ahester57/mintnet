#!/bin/bash

JSONRPC_PORT=${JSONRPC_PORT:-'8545'}
WEBSOCKETS_PORT=${WEBSOCKETS_PORT:-'8546'}
NETWORK_PORT=${NETWORK_PORT:-'30303'}

/parity/parity --config /etc/mintnet/mintnet.toml \
    --jsonrpc-port=$JSONRPC_PORT \
    --jsonrpc-cors all \
    --jsonrpc-threads=8 \
    --port=$NETWORK_PORT \
    --ws-port=$WEBSOCKETS_PORT \
    --unsafe-expose
