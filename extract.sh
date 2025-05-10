#!/bin/bash

# Extraer el segundo campo (local_address), ignorando la primera línea (encabezado)
result=$(awk 'NR > 1 {print $2}' /proc/net/tcp | cut -d: -f2 | sort -u)

# Recorrer los puertos hexadecimales y convertirlos a decimal con Bash
for hex_port in $result; do
    # Usamos $((16#$hex_port)) para convertir de hex a decimal
    dec_port=$((16#$hex_port))
    echo "Puerto: $dec_port"
done
