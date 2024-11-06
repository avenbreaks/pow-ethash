# Proof Of Work Blockchain 

Adoption From Go-Ethereum V1.11.6 

### Installing Geth 
go install github.com/ethereum/go-ethereum/cmd/geth@v1.11
cp /root/go/bin/geth /usr/local/bin/geth

### Start Node

```bash
geth --datadir miner-1 account new
```

change alloc account with new account already create in folder miner-1


```bash
geth --datadir miner-1 --cache.preimages --verbosity=3 init genesis.json
./miner-1.sh
eth.accounts
admin.nodeInfo.enode
```

### Run Another Node
1. create a new folder like blockchainData with another name
2. initialize the genesis block for this folder
3. the port and authrpc port must be changed for every node if running on the same machine

```bash
./miner-2.sh
```