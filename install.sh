#!/bin/bash

# Path to the file containing the list of packages
PACKAGE_LIST="packages.txt"

# Loop through each line of the package list
while IFS= read -r line; do
    # Skip empty lines and lines starting with #
    if [[ -z "$line" || "$line" == \#* ]]; then
        continue
    fi

    # Install the package using yay
    yay -S --noconfirm "$line"
done < "$PACKAGE_LIST"

