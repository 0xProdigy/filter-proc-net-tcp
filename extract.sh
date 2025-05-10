#!/bin/bash

# Extraer los puertos en hexadecimal desde /proc/net/tcp (ignorando el encabezado)
ports=$(tail -n +2 /proc/net/tcp | awk '{split($2, a, ":"); print a[2]}' | sort -u)

# Convertir cada puerto de hexadecimal a decimal
for hex in $ports; do
    dec=$(echo "ibase=16; $hex" | bc)
    echo "Puerto: $dec"
done
