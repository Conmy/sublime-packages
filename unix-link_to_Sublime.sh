#!/bin/bash
mkdir -p ~/.config/sublime-text-3/Packages
dir=$(pwd)
if [ -d ~/.config/sublime-text-3/Packages/User ]; then
    rm -r ~/.config/sublime-text-3/Packages/User
    echo "removed file"
fi

ln -s $dir/User ~/.config/sublime-text-3/Packages/
