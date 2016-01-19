#!/bin/bash
# Creates symlinks to the config files in the current directory using GNU stow

# Check if stow is installed
if [[ (! -x "/sbin/stow") ]]; then
    echo "Please install stow"
    exit 1
fi

# Change to the stow directory
cd $(dirname $0)

stow git
stow ssh
sudo stow -t / makepgk
sudo stow -t / pacman
sudo stow -t / tlp
sudo stow -t / iwlwifi
