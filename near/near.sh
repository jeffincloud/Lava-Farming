#!/bin/bash

if hash near 2>/dev/null; then
    echo "near is installed"
else
    npm install -g near-cli
fi

export NEAR_NETWORK=mainnet
export NEAR_MAINNET_RPC=https://near.lava.build/lava-referer-8dacf697-a98b-4b84-bc0a-6782688c9bf3/


echo  "Hi dude!"
echo  "Please set your Near AccountId and your seedPhrase"
read -p 'AccountId: ' account_id
read -p 'seedPhrase: ' seedprhase
read -p 'Write the accountId of the receiver account: ' receiver
near add-credentials $account_id --seedPhrase "$seedprhase"

echo "login-in to MyNeatWallet..."
near login --networkId mainnet

while true
do
random_balance=$((20 + RANDOM % 60))
random_tx=$((60 + RANDOM % 120))
#random_value=$((0.0001 + RANDOM % 0.0005))
echo "sending $random_value near to your other wallet. next tx will be in $random_tx seconds"
near send-near $account_id $receiver 0.0001 --networkId mainnet
sleep $random_tx
echo "Consulting your balance. Next call will be in $random_balance seconds"
near state $account_id
sleep $random_balance
done