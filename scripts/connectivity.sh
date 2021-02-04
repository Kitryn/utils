#!/usr/bin/env bash

while [ true ]
do
    if [[ "$(ping -c1 -t2 8.8.8.8 | grep '0 packets received')" != "" ]]; then
        echo "Internet isn't present"
        exit 1
    else
        echo "Internet is present"
    fi
    sleep 1
done

