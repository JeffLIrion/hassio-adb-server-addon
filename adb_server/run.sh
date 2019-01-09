#!/bin/bash
set -e

CONFIG_PATH=/data/options.json

DEVICES=$(jq --raw-output '.devices[]' $CONFIG_PATH)

# start the ADB server
adb -a nodaemon server

# connect to each of the devices
for device in $DEVICES; do
    adb connect $device
done

