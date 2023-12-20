#!/bin/bash

result=$(cat /proc/net/tcp | awk '{print $2}' | sort -u | tr -d 'local_address' | awk -F: '{print $2}')

for item in $result; do
    echo "Puerto: obase=10; ibase=16; $result" | bc 2>/dev/null 
done