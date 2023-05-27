# Composable Testnet 3 Genesis Transaction

## Binary
Compile from source (go 1.20 recommended):
```
git clone https://github.com/notional-labs/composable-testnet
cd composable-testnet 
git fetch --all
git checkout v2.3.4
make install
```
Precompiled binary could be found here: https://github.com/notional-labs/composable-testnet/releases/tag/v2.3.4

## Init
```
banksyd init NODE_NAME --chain-id banksy-testnet-3
wget -O ~/.banksy/config/genesis.json https://raw.githubusercontent.com/notional-labs/composable-networks/main/banksy-testnet-3/pregenesis.json
banksyd config chain-id banksy-testnet-3
```

## Keys
Generate a new key:
```
banksyd keys add KEYNAME 
```
Recover existing key:
```
banksyd keys add KEYNAME --recover
```

## Creating genesis transaction
Step-by-step guide:
```
banksyd add-genesis-account KEYNAME 10000000000000000ppica
banksyd gentx KEYNAME 10000000000000000ppica \
--moniker="" \
--identity="" \
--details="" \
--website="" \
--security-contact="" \
--chain-id banksy-testnet-3
```
The output will look like this: 
```
Genesis transaction written to "~/.banksy/config/gentx/gentx-XXX.json"
```
Fork the repo and create a pull request with your gentx-XXX.json moved to this directory: https://github.com/notional-labs/composable-networks/tree/main/banksy-testnet-3/gentxs

Remember to change the file name to your validator name `gentx-YOURNAME.json`

Example:
```
git clone https://github.com/notional-labs/composable-networks/tree/main/banksy-testnet-3/gentxs
mv ~/.banksy/config/gentx/gentx-XXX.json ~/composable-networks/banksy-testnet-3/gentxs/gentx-YOURNAME.json
```
