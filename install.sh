#!/usr/bin/env bash

bins="$(find bins/ -maxdepth 1 -type f -executable -print)"

declare -a array=($bins)
declare -i i=0
for elem in "${array[@]}"; do
    echo "$i $elem"
    i+=1
    sudo cp -i "$elem" /usr/bin/
done
# for elem in "${array[@]}"; do
#     echo "$elem"
# done
# while IFS="" read -r line; do
#     stripped="$(echo $line | sed -s 's/.*\///')"
#     sudo cp -i "bins/$stripped" /usr/bin/
# done <<< "$bins"
