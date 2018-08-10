#!/bin/bash -u

# gen sym-links of dotfiles
for F in $(find . -maxdepth 1 -type f); do
  # if [ $F != ${0##*/} ] ; then
  #   ln -s $(pwd)/$F ~/.$F
  # fi
  echo $F
done

# set-up config files for neovim
ln -s $(pwd)/vim ~/.config/nvim


