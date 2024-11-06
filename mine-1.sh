#!/bin/bash

set -e 

exec geth \
    --datadir "/root/pow/miner-1" \
    --rpc.allow-unprotected-txs \
    --ethash.cachedir="/root/pow/miner-1/cache" \
    --ethash.cachesinmem 2 \
    --ethash.cacheslockmmap \
    --ethash.cachesondisk 3 \
    --ethash.dagdir="/root/pow/miner-1/mining-dag" \
    --ethash.dagsinmem 1 \
    --ethash.dagslockmmap \
    --ethash.dagsondisk 2 \
    --networkid 293221 \
    --authrpc.jwtsecret="/root/pow/jwtsecret" \
    --authrpc.port 8551 \
    --authrpc.addr 0.0.0.0 \
    --port 30305 \
    --authrpc.vhosts "*" \
    --http.addr "0.0.0.0" \
    --snapshot=false \
    --syncmode=full \
    console 2>> geth.log