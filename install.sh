#!/bin/bash

for f in .*
  do
    if [[ -f $f ]] 
      then
        mv ~/$f ~/previous_dotfiles/$f;
        ln -s $PWD/$f ~/$f;	
    fi
  done
echo 'Installation Complete!'
