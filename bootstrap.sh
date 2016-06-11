#!/bin/bash
# bootstrap.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles

files="vimrc vim"    # list of files/folders to symlink in homedir

for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s $PWD/.$file ~/.$file
done

echo "Bootstrap completed"
