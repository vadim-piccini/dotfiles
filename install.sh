#!/bin/bash

# replace dotfiles
for f in .*
  do
    if [[ -f $f ]] 
      then
        mv ~/$f ~/previous_dotfiles/$f;
        ln -s $PWD/$f ~/$f;	
    fi
  done

# install plugvim (vim plugin manager)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo 'Installation Complete!'
