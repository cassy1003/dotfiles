#!/bin/sh

ln -s ~/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/vim/colors/molokai_cassy.vim ~/.vim/colors/molokai_cassy.vim

ln -s ~/dotfiles/oh-my-zsh/custom/common.plugin.zsh ~/.oh-my-zsh/custom/common.plugin.zsh
ln -s ~/dotfiles/oh-my-zsh/themes/fino_cassy.zsh-theme ~/.oh-my-zsh/themes/fino_cassy.zsh-theme

git config --global color.ui true
git config --global core.editor 'vim -c "set fenc=utf-8"'
