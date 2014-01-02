"basic
syntax enable
set nocompatible
set backspace=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set number
set showmatch
set mouse=a
set ruler
set showcmd
set incsearch
set sidescroll=1
set whichwrap=b,s,<,>,[,]
set foldmethod=marker
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree.git'
Bundle 'altercation/vim-colors-solarized'
Bundle 'plasticboy/vim-markdown'

Bundle 'taglist.vim'
Bundle 'L9'
Bundle 'ctrlp.vim'
Bundle 'Command-T'
Bundle 'vim-coffee-script'

filetype plugin indent on

"solarized
set t_Co=16
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized

"powerline
set laststatus=2
let g:Powerline_symbols = 'fancy'

"taglist
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_GainFocus_On_ToggleOpen = 1

"markdown-mode
let g:vim_markdown_folding_disabled=1

"keymap
let mapleader = ','
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>t :TlistToggle<CR>
nnoremap <leader>c :CtrlP<CR>
