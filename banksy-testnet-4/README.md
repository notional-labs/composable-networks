## Composable Testnet 4 chain info


## Syncing materials:



### Peers & seeds:
You can set the peers/seeds in `config.toml` or run the node with `--p2p.seeds="" --p2p.persistent_peers=""`

Feel free to PR your peers/seeds here:

*Seeds:*
```
a89d3d9fc0465615aa1100dcf53172814aa2b8cf@168.119.91.22:2260
```

### Example statesync scripts
```
rm -rf /root/.banksy

/root/go/bin/centaurid init test --chain-id=banksy-testnet-4

wget -O ~/.banksy/config/genesis.json https://raw.githubusercontent.com/notional-labs/composable-networks/main/banksy-testnet-4/genesis.json


INTERVAL=100
LATEST_HEIGHT=$(curl -s https://rpc-banksy4.notional.ventures/block | jq -r .result.block.header.height)
BLOCK_HEIGHT=$((LATEST_HEIGHT - INTERVAL))
TRUST_HASH=$(curl -s "https://rpc-banksy4.notional.ventures/block?height=$BLOCK_HEIGHT" | jq -r .result.block_id.hash)

echo "BLOCK_HEIGHT=${BLOCK_HEIGHT}"
echo "TRUST_HASH=${TRUST_HASH}"

export CENTAURID_STATESYNC_ENABLE=true
export CENTAURID_STATESYNC_RPC_SERVERS="https://rpc-banksy4.notional.ventures:443,https://rpc-centauri4.testnet.composablenodes.tech:443"
export CENTAURID_STATESYNC_TRUST_HEIGHT=$BLOCK_HEIGHT
export CENTAURID_STATESYNC_TRUST_HASH=$TRUST_HASH
export CENTAURID_P2P_PERSITENT_PEERS="a89d3d9fc0465615aa1100dcf53172814aa2b8cf@168.119.91.22:2260,3366e4a64b72697a010baca0f16a7c975e7469d2@138.201.220.156:25656"

# Start chain.
cd $HOME
sh start_chain.sh
```
