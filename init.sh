#!/bin/bash

# create directories
mkdir -p vim/bundle

# get vundle
git clone https://github.com/gmarik/vundle.git $PWD/vim/bundle/vundle

# links
today=`date +%Y%m%d`
if [ -f "$HOME/.vimrc" ]; then
	mv $HOME/.vimrc $HOME/.vimrc.backup.${today}
fi
if [ -d "$HOME/.vim" ]; then
	mv $HOME/.vim $HOME/.vim.backup.${today}
fi

ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/vim $HOME/.vim

echo "Done!"
