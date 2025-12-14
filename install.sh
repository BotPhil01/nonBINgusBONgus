#!/usr/bin/env bash

bins="$(find . -maxdepth 1 -type f -executable)"

while IFS="" read -r line; do
    if [[ "$line" == "./install.sh"]]; then
        continue
    fi
    stripped="$(echo $line | sed -s 's/\.\///')"
    sudo cp "bins/$line" /usr/bin/
    sudo ln -sf "/usr/bin/$stripped" "$line" 
done <<< "$bins"
