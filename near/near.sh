#!/bin/bash

if hash near 2>/dev/null; then
    echo "near is installed"
else
    npm install -g near-cli
fi

export NEAR_NETWORK=mainnet
export NEAR_MAINNET_RPC=https://near.lava.build/lava-referer-8dacf697-a98b-4b84-bc0a-6782688c9bf3/


echo  Hi dude!
echo  Please set your Near AccountId and your seedPhrase
read -p 'AccountId: ' account_id
read -p 'seedPhrase: ' seedprhase
near add-credentials $account_id --seedPhrase "$seedprhase"

echo Getting your balance in range of 20 and 60 seconds!

while true
do
random_number=$((20 + RANDOM % 60))
echo $random_number
near state $account_id
sleep $random_number
done
