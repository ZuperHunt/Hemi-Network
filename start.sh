#!/bin/bash

POPM_FILE_LOCATION="/app/secrets/popm-secret.json"

if [ ! -e "$POPM_FILE_LOCATION" ]; then
  /app/keygen -secp256k1 -json -net="testnet" > $POPM_FILE_LOCATION
fi

export POPM_BTC_PRIVKEY="$(cat "$POPM_FILE_LOCATION" | jq -r ".private_key")"

/app/popmd
