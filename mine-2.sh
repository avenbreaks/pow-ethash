#!/bin/bash

set -e 

exec geth \
    --datadir miner-2 \
    --rpc.allow-unprotected-txs \
    --ethash.cachedir="/root/pow/miner-2/cache" \
    --ethash.cachesinmem 2 \
    --ethash.cacheslockmmap \
    --ethash.cachesondisk 3 \
    --ethash.dagdir="/root/pow/miner-2/mining-dag" \
    --ethash.dagsinmem 1 \
    --ethash.dagslockmmap \
    --ethash.dagsondisk 2 \
    --networkid 293221 \
    --authrpc.jwtsecret="/root/pow/jwtsecret" \
    --authrpc.port 8551 \
    --authrpc.addr 0.0.0.0 \
    --port 30305 \
    --authrpc.port 8553 \
    --authrpc.vhosts "*" \
    --preload /root/pow/preload.js \
    --bootnodes="enode://dbdf3542df15b12aadf744220a066f52d7201afdbce1c8017dd3dec3150a9de478a6fdbf78f6469d483d387d15b64018fdaf59a9c179d7392bdb94021e732f04@207.244.227.117:30303"