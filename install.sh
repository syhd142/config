#!/bin/bash
cd .

CF_DIR=`pwd`

#更新配置的子模块到最新版本
git pull -q origin master

#.bash_profile
ln -s $CF_DIR/aliases/bash_profile ~/.bash_profile

#.vim
ln -s $CF_DIR/vim/vimrc ~/.vimrc
ln -s $CF_DIR/vim/ ~/.vim

#alias
ALIASES_DIR="$CF_DIR/aliases"
ALIASES_FILES=`ls $ALIASES_DIR/*aliases`
for f in $ALIASES_FILES
do
    F_NAME=`basename $f`
    ln -s $f ~/"."$F_NAME
done

#completion
COMPLETION_DIR="$CF_DIR/completions"
ALIASES_FILES=`ls $COMPLETION_DIR/*completion`
for f in $ALIASES_FILES
do
    F_NAME=`basename $f`
    ln -s $f ~/"."$F_NAME
done

#自动安装配置vim
#sh -x $CF_DIR/k-vim/install.sh

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

. ~/.bash_profile
