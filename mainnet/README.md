
### Binary and config:

Testnet-3 launch version: v2.3.5, precompiled binary for linux could be found here: https://github.com/notional-labs/composable-centauri/releases/tag/v2.3.5

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
```