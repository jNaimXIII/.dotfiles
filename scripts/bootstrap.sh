#!/bin/bash

ROOT_DIR=$(dirname $(pwd))

# ASDF
rm -rf $HOME/.tool-versions
ln -sf $ROOT_DIR/config/asdf/.tool-versions $HOME/.tool-versions

# Git
rm -rf $HOME/.gitconfig
ln -sf $ROOT_DIR/config/git/.gitconfig $HOME/.gitconfig

# Idea Vim
rm -rf $HOME/.ideavimrc
ln -sf $ROOT_DIR/config/idea/.ideavimrc $HOME/.ideavimrc

# Shell (ZSH)
rm -rf $HOME/.zshrc
rm -rf $HOME/.zprofile
rm -rf $HOME/.zsh_plugins.txt
rm -rf $HOME/.scripts
ln -sf $ROOT_DIR/config/shell/zsh/.zshrc $HOME/.zshrc
ln -sf $ROOT_DIR/config/shell/zsh/.zprofile $HOME/.zprofile
ln -sf $ROOT_DIR/config/shell/zsh/.zsh_plugins.txt $HOME/.zsh_plugins.txt
ln -sf $ROOT_DIR/config/shell/.scripts $HOME/.scripts

# Neovim (AstroNvim)
rm -rf $HOME/.config/AstroNvim/lua/user
ln -sf $ROOT_DIR/config/nvim/AstroNvim/user $HOME/.config/AstroNvim/lua/user

# Tmux
rm -rf $HOME/.tmux.conf
ln -sf $ROOT_DIR/config/tmux/.tmux.conf $HOME/.tmux.conf

# Cspell
rm -rf $HOME/.cspell.json
ln -sf $ROOT_DIR/config/cspell/.cspell.json $HOME/.cspell.json
