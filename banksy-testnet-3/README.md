## Composable Testnet 3 chain info


## Syncing materials:

### Binary and config:

Testnet-3 launch version: v2.3.5, precompiled binary for linux could be found here: https://github.com/notional-labs/composable-testnet/releases/tag/v2.3.5

```
cd ~/composable-testnet
git fetch --all
git checkout v2.3.5
make install
banksyd tendermint unsafe-reset-all
```

### Peers & seeds:
You can set the peers/seeds in `config.toml` or run the node with `--p2p.seeds="" --p2p.persistent_peers=""`

Feel free to PR your peers/seeds here:

*Seeds:*
```
872c8a78a17a24d6f44e1126c46ef52069c7bb18@65.109.80.150:21500
```

### Download the genesis and start:
```
wget -O ~/.banksy/config/genesis.json https://raw.githubusercontent.com/notional-labs/composable-networks/main/banksy-testnet-3/genesis.json
banksyd start --p2p.seeds 872c8a78a17a24d6f44e1126c46ef52069c7bb18@65.109.80.150:21500
```
