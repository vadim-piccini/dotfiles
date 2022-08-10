#!/bin/bash

# Install zsh and ohmyzsh
apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Replace dotfiles
for f in .*
  do
    if [[ -f $f ]] 
      then
        mv ~/$f ~/previous_dotfiles/$f;
        ln -s $PWD/$f ~/$f;	
    fi
  done

# Install plugvim (vim plugin manager)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install zsh syntax highlighting with oh my zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo $'Installation Complete! You should probably run \'sudo reboot\'! '
