#!/bin/bash
cd .

CF_DIR=`pwd`

git pull -q origin master

backup()
{
    if [ -h "$1" ]
    then
        unlink "$1" 
    elif [ -e "$1" ]
    then
        mv "$1" "$1".bak
    fi
}

#vim
backup ~/.vimrc
backup ~/.vim
ln -s $CF_DIR/vim/vimrc ~/.vimrc
ln -s $CF_DIR/vim/ ~/.vim

#alias
ALIASES_DIR="$CF_DIR/aliases"
ALIASES_FILES=`ls $ALIASES_DIR/*aliases`
for f in $ALIASES_FILES
do
    F_NAME=`basename $f`
    backup ~/"."$F_NAME
    ln -s $f ~/"."$F_NAME
done

#completion
COMPLETION_DIR="$CF_DIR/completions"
ALIASES_FILES=`ls $COMPLETION_DIR/*completion`
for f in $ALIASES_FILES
do
    F_NAME=`basename $f`
    backup ~/"."$F_NAME
    ln -s $f ~/"."$F_NAME
done

backup ~/bin
ln -s $CF_DIR/bin ~/bin

#configs
##for ssh
#if [ -d ~/.ssh ]
#then
#    mkdir -p ~/.ssh
#fi
#ln -s $CF_DIR/config/ssh-config ~/.ssh/config
#
##for git
#ln -s $CF_DIR/config/git-config ~/.gitconfig

#.bash_profile
backup ~/.bash_profile
ln -s $CF_DIR/aliases/bash_profile ~/.bash_profile
. ~/.bash_profile
