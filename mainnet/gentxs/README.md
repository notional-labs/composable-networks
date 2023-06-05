# Mainnet Genesis Transaction
*Centauri-1*

## Binary
Compile from source (go 1.20 recommended):
```
git clone https://github.com/notional-labs/composable-centauri
cd composable-centauri 
git fetch --all
git checkout v2.3.5
make install
```
Precompiled binary could be found here: https://github.com/notional-labs/composable-centauri/releases/download/v2.3.5/banksyd

## Init
```
banksyd init NODE_NAME --chain-id centauri-1
wget -O ~/.banksy/config/genesis.json https://raw.githubusercontent.com/notional-labs/composable-networks/main/mainnet/pregenesis.json
banksyd config chain-id centauri-1
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
banksyd add-genesis-account KEYNAME 50000000000000ppica
banksyd gentx KEYNAME 50000000000000ppica \
--moniker="" \
--identity="" \
--details="" \
--website="" \
--security-contact="" \
--chain-id centauri-1
```
The output will look like this: 
```
Genesis transaction written to "~/.banksy/config/gentx/gentx-XXX.json"
```
Fork the repo and create a pull request with your gentx-XXX.json moved to this directory: https://github.com/notional-labs/composable-networks/tree/main/mainnet/gentxs

Remember to change the file name to your validator name `gentx-YOURNAME.json`

Example:
```
git clone https://github.com/notional-labs/composable-networks
mv ~/.banksy/config/gentx/gentx-XXX.json ~/composable-networks/mainnet/gentxs/gentx-YOURNAME.json
```
