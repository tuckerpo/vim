set nocompatible              " be iMproved
filetype plugin indent off
set rtp+=~/.fzf
call plug#begin('~/.vim/pluggerinos')
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
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
set nonu
set relativenumber
set incsearch
set tw=80
set wrap

" Remaps
nnoremap <C-p> :Files<Cr>
