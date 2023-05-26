## Composable Testnet 3 chain info

Gentxs Instruction [here](https://github.com/notional-labs/composable-networks/tree/main/testnet-3/gentxs)

## Syncing materials:

### Binary and config:

Testnet-3 launch version: v2.3.4, precompiled binary for linux could be found here: https://github.com/notional-labs/composable-testnet/releases/tag/v2.3.4

```
cd ~/composable-testnet
git fetch --all
git checkout v2.3.4
make install
banksyd tendermint unsafe-reset-all
```
