#!/usr/bin/env zsh
using_rvm()
{
  type rvm > /dev/null 2>&1
}

using_git()
{
  type git > /dev/null 2>&1
}

cp dot_zshrc $HOME/.zshrc
cp dot_ackrc $HOME/.ackrc
cp dot_pryrc $HOME/.pryrc
cp dot_irbrc $HOME/.irbrc
cp dot_tmux_conf $HOME/.tmux.conf

if using_rvm; then
  chmod +x $rvm_path/hooks/after_cd_bundler
fi

if using_git; then
  cp dot_gitconfig $HOME/.gitconfig
  git config --global core.excludesfile ~/.gitignore
  cp dot_gitignore $HOME/.gitignore
fi
