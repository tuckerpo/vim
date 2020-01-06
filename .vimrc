set nocompatible              " be iMproved
filetype plugin indent off

call plug#begin('~/.vim/pluggerinos')
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
call plug#end()
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set shiftround
set autoindent
set smartindent
set number
" VCS
set nobackup
set nowritebackup
set noswapfile

set ignorecase
set smartcase
colo darkblue