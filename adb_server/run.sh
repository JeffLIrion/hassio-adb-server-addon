#!/bin/bash
set -e

CONFIG_PATH=/data/options.json

DEVICES=$(jq --raw-output '.devices[]' $CONFIG_PATH)

# start the ADB server
/opt/platform-tools/adb start-server

# connect to each of the devices
for device in $DEVICES; do
    /opt/platform-tools/adb connect $device
done

