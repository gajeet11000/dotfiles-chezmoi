#!/bin/bash
awk '!/^#/ && NF' packages.txt | xargs yay -S --needed
