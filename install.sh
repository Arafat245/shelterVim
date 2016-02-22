#!/usr/bin/env bash

set -e

echo This bash script will download and install the vim from http://github.com/ehzShelter/shelterVim.


echo -n "Are you sure to install this(y/n)"
read answer
if echo "$answer" | grep -iq "^y" ; then
    if [ ! -d ~/.vim ]; then
        mkdir -p ~/.vim

    else
        echo "there is already an $HOME/.vim directory in your $HOME folder"
        echo "Backup your existing $HOME/.vim directory and create a new one !"
        mv -f ~/.vim ~/backupDir
        echo -n "Are you ready to remove that directory and continue(y/n)"
        read confirm
        if echo "$confirm" | grep -iq "^y" ; then
            rm -rf ~/.vim
            mkdir -p ~/.vim
        else
            echo please press y to continue
            exit
        fi
    fi
else
    echo please press y to continue
    exit
fi


echo
echo Downloading and installing...
echo please wait....


git clone --quiet https://github.com/ehzShelter/shelterVim ~/.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo symbolic linked .vimrc done

if [ -f ~/.vim/.vimrc ]; then
    ln -f -s ~/.vim/.vimrc ~/.vimrc
else
    echo ".vimrc file does not exist"
    exit
fi

vim +BundleInstall +qall < /dev/tty # necessary to avoid vim: Input not from terminal warning
echo
echo Installed vim plugins "(could take a while)"
echo Be patient there is so much dependices May be or NOT
echo Please wait

echo -n "Are you sure to install YouCompleteMe with Clang-complete support(y/n)"
read answer
if echo "$answer" | grep -iq "^y" ; then
~/.vim/bundle/YouCompleteMe/install.py --clang-completer
    else
~/.vim/bundle/YouCompleteMe/install.py
fi

echo -e "\[\e[1;32m\]Everything succesfully installed.\[\e[0m\]"
echo " THANK YOU :) :) "
