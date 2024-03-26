#!/bin/bash

# Check if oh-my-zsh is installed
#OMZDIR="$HOME/.oh-my-zsh"
#if [ ! -d "$OMZDIR" ]; then
 # echo 'Installing oh-my-zsh'
 # /bin/sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#else
 # echo 'Updating oh-my-zsh'
  #upgrade_oh_my_zsh
#fi

USER=$(who | cut -d' ' -f1)

if [[ -d ~/.oh-my-zsh ]]; then
   echo "Oh My Zsh is already installed"
 else
   RUN_ZSH=no
   CHSH=no
   sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
 fi

if (cat /etc/passwd | grep $USER | grep /usr/bin/zsh); then
  echo "ZSH is already the default shell"
else
  chsh -s /usr/bin/zsh
fi



git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search $ZSH/custom/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/custom/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/Pilaton/OhMyZsh-full-autoupdate.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/ohmyzsh-full-autoupdate
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install


# Change default shell
if [! $0 = "-zsh"]; then
  echo 'Changing default shell to zsh'
  chsh -s $(which zsh)
else
  echo 'Already using zsh'
fi
