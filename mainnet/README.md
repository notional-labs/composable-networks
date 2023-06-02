## Composable mainnet: centauri-1

### Hardware recommendation:

Quad core or larger amd64 CPU

64GB+ RAM

1TB+ NVMe Storage

### Binary and config:

Testnet-3 launch version: v2.3.5, precompiled binary for linux could be found here: https://github.com/notional-labs/composable-centauri/releases/tag/v2.3.5

```
cd ~/composable-centauri
git fetch --all
git checkout v2.3.5
make install
banksyd tendermint unsafe-reset-all
```

### Peers & seeds:
You can set the peers/seeds in `config.toml`:
```
sed -i.bak -E "s|^(seeds[[:space:]]+=[[:space:]]+).*$|\1"'"c7f52f81ee1b1f7107fc78ca2de476c730e00be9@65.109.80.150:2635"'"|" ~/.banksy/config/config.toml
```

or run the node with `--p2p.seeds="" --p2p.persistent_peers=""`

Feel free to PR your peers/seeds here:

*Seeds:*
```
c7f52f81ee1b1f7107fc78ca2de476c730e00be9@65.109.80.150:2635
```
