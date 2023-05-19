#!/bin/bash

# Set the path to the folder containing the JSON files
JSON_FOLDER="/root/composable-networks/testnet-2/gentxs"

# Loop through each JSON file in the folder and extract the "delegator_address" value
for file in ${JSON_FOLDER}/*.json; do
  echo "Processing ${file}..."
  address=$(jq -r '.body.messages[0].delegator_address' ${file})
  ~/go/bin/banksyd add-genesis-account $address 10000000upica --home ~/.banksy2
done