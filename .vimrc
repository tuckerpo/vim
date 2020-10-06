set nocompatible              " be iMproved
filetype plugin indent off
set rtp+=~/.fzf
call plug#begin('~/.vim/pluggerinos')
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
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
colo seoul256
set nonu
set relativenumber
set incsearch
set tw=80
set wrap

" Remaps
nnoremap <C-p> :Files<Cr>

function ForceFormatBuffer()
    if !empty(findfile('.clang-format', expand('%:p:h') . ';'))
        let cursor_pos = getpos('.')
        :%!clang-format
        call setpos('.', cursor_pos)
    endif
endfunction

function FormatBuffer()
    if &modified && !empty(findfile('.clang-format', expand('%:p:h') . ';'))
        let cursor_pos = getpos('.')
        :%!clang-format
        call setpos('.', cursor_pos)
    endif
endfunction

function! Strip(in_str)
    return substitute(a:in_str, '^\s*\(.\{-}\)\s*$', '\1', '')
endfunction

autocmd BufWritePre *.h,*.hh,*.hpp,*.c,*.cc,*.cpp,*.vert,*.frag :call ForceFormatBuffer()
