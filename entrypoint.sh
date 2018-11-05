#!/bin/bash

JSONRPC_PORT=${JSONRPC_PORT:-'8545'}
WEBSOCKETS_PORT=${WEBSOCKETS_PORT:-'8546'}
NETWORK_PORT=${NETWORK_PORT:-'30311'}
BASE_PATH=${BASE_PATH:-'/home/parity/io.parity.ethereum'}

/home/parity/bin/parity --config /etc/mintnet/mintnet.toml \
    --jsonrpc-port=$JSONRPC_PORT \
    --port=$NETWORK_PORT \
    --ws-port=$WEBSOCKETS_PORT \
    --db-path $BASE_PATH/chains \
    --keys-path $BASE_PATH/keys \
    --jsonrpc-cors all \
    --ws-origins all \
    --unsafe-expose
