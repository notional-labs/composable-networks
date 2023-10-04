## Composable Testnet 4 chain info


## Syncing materials:

### Binary and config:

Testnet-4 launch version: v5.2.3-testnet4, precompiled binary for linux could be found here: https://github.com/notional-labs/composable-centauri/tree/v5.2.3-testnet4

```
cd ~/composable-centauri
git fetch --all
git checkout v5.2.3-testnet4
make install
centaurid tendermint unsafe-reset-all
```

### Peers & seeds:
You can set the peers/seeds in `config.toml` or run the node with `--p2p.seeds="" --p2p.persistent_peers=""`

Feel free to PR your peers/seeds here:

*Seeds:*
```
a89d3d9fc0465615aa1100dcf53172814aa2b8cf@168.119.91.22:2260
```

### Download the genesis and start:
```
wget -O ~/.banksy/config/genesis.json https://raw.githubusercontent.com/notional-labs/composable-networks/main/banksy-testnet-4/genesis.json

banksyd start --p2p.seeds a89d3d9fc0465615aa1100dcf53172814aa2b8cf@168.119.91.22:2260
```
