#!/bin/bash

# 建立目录
mkdir -p vim/autoload
mkdir -p vim/doc
mkdir -p vim/bundle

# 下载pathogen
curl https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim > $PWD/vim/autoload/pathogen.vim

# 下载插件
git clone https://github.com/Lokaltog/vim-powerline.git $PWD/vim/bundle/vim-powerline
git clone https://github.com/vim-scripts/taglist.vim.git $PWD/vim/bundle/taglist.vim
git clone https://github.com/scrooloose/nerdtree.git $PWD/vim/bundle/nerdtree

# 建立链接
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
