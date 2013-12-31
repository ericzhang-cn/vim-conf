"basic{
syntax enable
set nocompatible
set helplang=cn "使用中文帮助文档
set backspace=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent "自动缩进
set cindent
set number
set showmatch
set mouse=a
set ruler "在右下角显示光标位置
set showcmd "显示未敲完的命令
set incsearch "在输入搜索的字符串同时就开始搜索已经输入的部分
set sidescroll=1 "屏幕放不下时，按一次屏幕移动一个字符
set whichwrap=b,s,<,>,[,] "跨行移动
set foldmethod=marker
filetype plugin indent on "自动识别文件类型，用文件类型plugin脚本，使用缩进定义文件
"}

execute pathogen#infect() "执行pathogen加载插件

"solarized{
set t_Co=16
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized
"}

"keymap{
let mapleader = ','
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>t :TlistToggle<CR>
"}

"powerline{
set laststatus=2
let g:Powerline_symbols = 'fancy'
"}

"taglist{
let Tlist_Show_One_File = 1 "只显示当前文件的taglist，默认是显示多个
let Tlist_Exit_OnlyWindow = 1 "如果taglist是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist
let Tlist_GainFocus_On_ToggleOpen = 1 "打开taglist时，光标保留在taglist窗口
"}

