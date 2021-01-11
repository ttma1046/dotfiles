set exrc
set guicursor=
set number relativenumber
set hidden
set noerrorbells
set nohlsearch
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set undodir=$HOME/vimfiles/undodir
set undofile
set incsearch   
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
syntax enable

call plug#begin('$HOME/vimfiles/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'gruvbox-community/gruvbox'
call plug#end()

colorscheme gruvbox
set bg=dark

" let mapleader = 
" nnoremap <leader>ps : 

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup THE_PRIMEAGEN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
