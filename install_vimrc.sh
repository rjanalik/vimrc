#!/bin/bash

# create symlink to vimrc
ln -s ~/.vim/vimrc.vim ~/.vimrc

# clone Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
