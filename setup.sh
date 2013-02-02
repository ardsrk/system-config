#!/usr/bin/env zsh
using_rvm()
{
  type rvm > /dev/null 2>&1
}

using_git()
{
  type git > /dev/null 2>&1
}

create_home_bin()
{
  if [ ! -d $HOME/bin ]; then
    mkdir $HOME/bin
  fi
  true
}

make_bins_executable()
{
  for f in `echo $HOME/bin/*`; chmod +x $f
}

cp dot_zshrc $HOME/.zshrc
cp dot_ackrc $HOME/.ackrc
cp dot_pryrc $HOME/.pryrc
cp dot_irbrc $HOME/.irbrc
cp dot_tmux_conf $HOME/.tmux.conf
create_home_bin && cp bin/* $HOME/bin
make_bins_executable

if using_rvm; then
  chmod +x $rvm_path/hooks/after_cd_bundler
fi

if using_git; then
  cp gitconf/dot_gitconfig $HOME/.gitconfig
  git config --global core.excludesfile ~/.gitignore
  cp gitconf/dot_gitignore $HOME/.gitignore
  cp gitconf/dot_githelpers $HOME/.githelpers
fi
