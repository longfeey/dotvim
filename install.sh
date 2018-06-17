#!/bin/bash
DOTVIM_PATH=`pwd`
#backup the origin files 
function backup()
{
    if [ -e ~/.vimrc ]
    then
    mv ~/.vimrc  ~/.vimrc_bak
    fi

    if [ -e ~/.vim ]
    then
    mv ~/.vim  ~/.vim_bak
    fi
}

function install()
{
    git submodule init && git submodule update

    #Create vim plugin
    ln -s $DOTVIM_PATH/.vimrc ~/.vimrc
    ln -s $DOTVIM_PATH ~/.vim

    #Create nvim plugin
    ln -s $DOTVIM_PATH ~/.vim ~/.config/nvim
    ln -s $DOTVIM_PATH/.vimrc ~/.config/nvim/init.vim
}

backup
install
