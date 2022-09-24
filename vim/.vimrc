set nocompatible

filetype on
filetype plugin on
filetype indent on

syntax on

set number
set relativenumber

set shiftwidth=2
set tabstop=2
set expandtab

set nobackup

set scrolloff=10

set nowrap

set incsearch

set ignorecase

set smartcase

set showcmd

set showmode

set showmatch

set hlsearch

set history=1000


set runtimepath+=~/.vim/plugin
call plug#begin()

Plug 'gruvbox-community/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', {'do': 'npm install', 'branch': 'release/0.x' }
call plug#end()

colorscheme gruvbox
set term=xterm-256color

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

let mapleader=" "
map <Leader>vp :VimuxPromptCommand<CR>

let g:airline#extensions#ale#enabled = 1

let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ }
let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'javascript': ['eslint'],
      \ }
let g:ale_fix_on_save = 1
