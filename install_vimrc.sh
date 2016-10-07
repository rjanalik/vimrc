#!/bin/bash

# create symlink to vimrc
ln -s ~/.vim/vimrc.vim ~/.vimrc

# clone dein
mkdir -p ~/.vim/dein/repos/github.com/Shougo/dein.vim
git clone https://github.com/Shougo/dein.vim.git ~/.vim/dein/repos/github.com/Shougo/dein.vim
