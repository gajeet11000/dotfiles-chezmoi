#!/usr/bin/bash

wallpapers=($(ls -d /mnt/Storage/PHOTOS/Wallpapers/*))
wall=${wallpapers[ $RANDOM % ${#wallpapers[@]} ]}


sed '1,2d' $HOME/.config/hypr/hyprpaper.conf > $HOME/.config/hypr/temp.txt
sed -i "1i preload = $wall\nwallpaper = , $wall\n" $HOME/.config/hypr/temp.txt
mv $HOME/.config/hypr/temp.txt $HOME/.config/hypr/hyprpaper.conf
