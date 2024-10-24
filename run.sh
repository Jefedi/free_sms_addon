#!/bin/bash

# Variables from the configuration
USER=$(jq --raw-output '.user' /data/options.json)
PASS=$(jq --raw-output '.pass' /data/options.json)
MESSAGE=$(jq --raw-output '.message' /data/options.json)

# Send the SMS using Free Mobile API
curl -X POST "https://smsapi.free-mobile.fr/sendmsg" \
     --data "user=$USER&pass=$PASS&msg=$MESSAGE"
