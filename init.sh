#!/bin/bash
# Creates symlinks to the config files in the current directory using GNU stow

# Check for root priviliges
if [[ $EUID -ne 0 ]]; then
   printf "Please run as root:\nsudo %s\n" "${0}"
   exit 1
fi

# Check if stow is installed
if [[ (! -x "/sbin/stow") ]]; then
    echo "Please install stow"
    exit 1
fi

# Change to the stow directory
cd $(dirname $0)

stow git
stow ssh
sudo -t / makepgk
sudo -t / pacman
