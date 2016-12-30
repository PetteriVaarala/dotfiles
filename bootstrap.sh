#!/bin/bash
# bootstrap.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles

# list of files/folders to symlink in homedir
files="vimrc vim bashrc bash_aliases gitconfig gitignore_global"

for file in $files; do
    if [ -f ~/.$file ]; then
        echo ".$file already exists in home directory."
    elif [ -d ~/.$file ]; then
        echo ".$file already exists in home directory."
    else
        echo "Creating symlink to .$file in home directory."
        ln -s $PWD/.$file ~/.$file
    fi
done

echo "Bootstrap completed"
