## Composable Testnet 2 chain info

Gentxs Instruction [here](https://github.com/notional-labs/composable-networks/tree/main/testnet-2/gentxs)

## Syncing materials:

### Binary and config:

Testnet-2 launch version: v2.3.2, precompiled binary for linux could be found here: https://github.com/notional-labs/composable-testnet/releases/tag/v2.3.2

```
cd ~/composable-testnet
git fetch --all
git checkout v2.3.2
make install
banksyd tendermint unsafe-reset-all
```
Please set your `minimum-gas-prices` in `~/.banksy/config/app.toml` to `0upica` or start the node with the flag `--minimum-gas-prices=0upica`

### Peers & seeds:
You can set the peers/seeds in `config.toml` or run the node with `--p2p.seeds="" --p2p.persistent_peers=""`

Feel free to PR your peers/seeds here:

*Seeds:*
```
872c8a78a17a24d6f44e1126c46ef52069c7bb18@65.109.80.150:2630,5c2a752c9b1952dbed075c56c600c3a79b58c395@composable-testnet-seed.autostake.com:26656,20e1000e88125698264454a884812746c2eb4807@seeds.lavenderfive.com:22256,3f472746f46493309650e5a033076689996c8881@composable-testnet.rpc.kjnodes.com:15959
```

*Peers:*
```
a8da45683cc35c4743e27eac5e2d33498b7a700d@65.108.225.126:56656,06206d0f5afb5b6d9d1c4efdd9b753da2553fa4f@96.234.160.22:30456,c4c51318e4d9a863c019fb277e5ed6748590e5c6@66.45.233.110:26657,7a4247261bad16289428543538d8e7b0c785b42c@135.181.22.94:26656,1d1b341ee37434cbcf23231d89fa410aeb970341@65.108.206.74:36656,73190b1ec85654eeb7ccdc42538a2bb4a98b2802@194.163.165.176:46656,a03d37eb137b4825da89183c3a1cc85b30541040@195.3.220.169:26656,837d9bf9a4ce4d8fd0e7b0cbe51870a2fa29526a@65.109.85.170:58656,f9cf7b4b1df105e67c632364847a4a00f86aa5c8@93.115.28.169:36656,55809d43e11bd97904a24c380968b414243fa247@65.109.154.182:47656,829fe9bab86000a420d00292c5e83fc1c3961d94@65.108.206.118:60756,085e6b4cf1f1d6f7e2c0b9d06d476d070cbd7929@banksy.sergo.dev:11813,a2041248892180f37fd8e8fe21d7d6b1972efa41@65.21.139.155:32656,b3df58870bc6ff98a88cae66f6eb616198c3b118@144.76.45.59:26656,3c091edbe051f9b0e1bcf46200db163e667a114a@65.108.129.94:26656,d9b5a5910c1cf6b52f79aae4cf97dd83086dfc25@65.108.229.93:27656,8ef48cb0abd32aba27e0b7dea59d625afae99028@65.21.5.205:26656,f42036053761675bc7ad48c4b1510e67254d9e24@65.109.28.226:20656,561b5acc7d6ae8994442855aac6b9a2ea94970d1@5.161.97.184:26656,a117b8ea8b909cb9a62ac0734e0e83787939a298@178.63.52.213:26656,81a92793f2e3266e45d304d5325905e0e587e0b7@65.109.61.113:26656,d0f54e60e10ca4d657b48c9cfc5549fb2a8c7a96@65.109.31.55:26656,18f86a7b2b8233e340b85733b77c649daa2533dc@138.201.59.93:26656,7b8f4a6d2aedf1d300edd447b5020ea174376f03@65.108.231.238:26677,32dfb88dbfae25475202c20adcdcca720f7268c9@65.21.200.161:15956,b3c715e6d140ea5de371db8bab081cb9923f45b2@65.108.78.107:26656,e8ff96b052acfc2cc10458fa163dc733a8328ae1@109.236.86.96:15956,ca63700c8a456548ebeb9859e73e7fc03cfa273b@peer1.apeironnodes.com:44003
```

### Download the genesis and start:
```
wget -O ~/.banksy/config/genesis.json https://raw.githubusercontent.com/notional-labs/composable-networks/main/testnet-2/genesis.json
banksyd start --minimum-gas-prices=0upica
```
