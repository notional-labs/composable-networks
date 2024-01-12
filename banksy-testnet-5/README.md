## Composable Testnet 5 chain info

`v6.3.6`

## Syncing materials:



### Peers & seeds:
You can set the peers/seeds in `config.toml` or run the node with `--p2p.seeds="" --p2p.persistent_peers=""`

Feel free to PR your peers/seeds here:

*Seeds:*
```
6e8a56df9b9c52a730dd780172fc135a96a9feda@65.109.26.223:26656
```

### Example sync from genesis script
```
rm -rf /root/.banksy
$HOME/go/bin/centaurid init test --chain-id=banksy-testnet-5
curl -Ls https://raw.githubusercontent.com/notional-labs/composable-networks/main/banksy-testnet-5/genesis.json > ~/.banksy/config/genesis.json
$HOME/go/bin/centaurid start --p2p.persistent_peers=6e8a56df9b9c52a730dd780172fc135a96a9feda@65.109.26.223:26656
```


### Example statesync script
```
rm -rf /root/.banksy
$HOME/go/bin/centaurid init test --chain-id=banksy-testnet-5
curl -Ls https://raw.githubusercontent.com/notional-labs/composable-networks/main/banksy-testnet-5/genesis.json > ~/.banksy/config/genesis.json 

INTERVAL=3000
LATEST_HEIGHT=$(curl -s http://65.109.26.223:26657/block | jq -r .result.block.header.height)
BLOCK_HEIGHT=$((LATEST_HEIGHT - INTERVAL))
TRUST_HASH=$(curl -s "http://65.109.26.223:26657/block?height=$BLOCK_HEIGHT" | jq -r .result.block_id.hash)

echo "BLOCK_HEIGHT=${BLOCK_HEIGHT}"
echo "TRUST_HASH=${TRUST_HASH}"

export CENTAURID_STATESYNC_ENABLE=true
export CENTAURID_STATESYNC_RPC_SERVERS="http://65.109.26.223:26657,http://65.109.26.223:26657"
export CENTAURID_STATESYNC_TRUST_HEIGHT=$BLOCK_HEIGHT
export CENTAURID_STATESYNC_TRUST_HASH=$TRUST_HASH
export CENTAURID_P2P_PERSITENT_PEERS="6e8a56df9b9c52a730dd780172fc135a96a9feda@65.109.26.223:26656"

$HOME/go/bin/centaurid start --p2p.persistent_peers=6e8a56df9b9c52a730dd780172fc135a96a9feda@65.109.26.223:26656
```
