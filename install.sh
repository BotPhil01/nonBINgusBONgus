#!/usr/bin/env bash

bins="$(find bins/ -maxdepth 1 -type f -executable)"

while IFS="" read -r line; do
    stripped="$(echo $line | sed -s 's/.*\///')"
    sudo cp "bins/$stripped" /usr/bin/
done <<< "$bins"
