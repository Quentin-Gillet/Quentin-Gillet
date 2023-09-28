#!/bin/sh

cp -r /home/quentin.gillet/afs/.confs/fonts ~/.local/share/
fc-cache -f

packages_list='neovim ripgrep nerdfonts lazygit'

#Neovim and other
for package in $packages_list;
do 
    nix profile install nixpkgs#$package
done;

cp -r /home/quentin.gillet/afs/.confs/nvim ~/.config/

nvim --headless -c 'Lazy install' -c 'Lazy update' 2> /dev/null &

feh --bg-fill /home/quentin.gillet/afs/.confs/wallpapers/orange-background.jpg
