#!/usr/bin/env bash

echo "Begin internet monitoring"
while [ true ]
do
    if [[ "$(ping -c1 -w2 8.8.8.8 | grep '100% packet loss')" != "" ]]; then
        echo "Internet isn't present, restarting wifi"
        nmcli radio wifi off
        sleep 2
        nmcli radio wifi on
        sleep 4
    fi
    sleep 1
done

