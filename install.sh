#!/bin/bash
install(){
    mkdir ~/.vim
    mkdir ~/.vim/undodir
    mkdir ~/.vim/plugged
    # installing vim plug
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    cd ~
    if [ -f .vimrc ]; then
        mv .vimrc .vimrc.old
    fi
    cp myvimrc_config/ubuntu/.vimrc ./
}

install
