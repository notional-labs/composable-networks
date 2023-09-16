# Composable Testnet 3 Genesis Transaction

## Binary
Compile from source (go 1.20 recommended):
```
git clone https://github.com/notional-labs/composable-centauri.git
cd composable-testnet 
git fetch --all
git checkout v5.1.0
make install
```

## Init
```
centaurid init NODE_NAME --chain-id ics-testnet
#TODO: Pre-genesis
centaurid config chain-id ics-testnet
```

## Keys
Generate a new key:
```
centaurid keys add KEYNAME 
```
Recover existing key:
```
centaurid keys add KEYNAME --recover
```

## Creating genesis transaction
Step-by-step guide:
```
centaurid add-genesis-account KEYNAME 10000000000000000ppica
centaurid gentx KEYNAME 10000000000000000ppica \
--moniker="" \
--identity="" \
--details="" \
--website="" \
--security-contact="" \
--chain-id ics-testnet
```
The output will look like this: 
```
Genesis transaction written to "~/.banksy/config/gentx/gentx-XXX.json"
```
Fork the repo and create a pull request with your gentx-XXX.json moved to this directory: https://github.com/notional-labs/composable-networks/tree/ics-testnet/gentxs

Remember to change the file name to your validator name `gentx-YOURNAME.json`

Example:
```
git clone https://github.com/notional-labs/composable-networks/tree/ics-testnet/gentxs
mv ~/.banksy/config/gentx/gentx-XXX.json ~/composable-networks/ics-testnet/gentxs/gentx-YOURNAME.json
```
