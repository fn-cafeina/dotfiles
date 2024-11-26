set mouse=a
set number
set numberwidth=2
set clipboard=unnamedplus
set incsearch
set hlsearch
set ignorecase
set smartcase
set cursorline
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set laststatus=2
set nowrap
set ruler
set background=dark
set termguicolors
set lazyredraw
set ttyfast

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'ayu-theme/ayu-vim'

call plug#end()

colorscheme ayu

let mapleader = " "

nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bp :bprevious<CR>
nnoremap <Leader>bd :bd<CR>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

nnoremap <Leader>sh :split<CR>
nnoremap <Leader>sv :vsplit<CR>

nnoremap <Leader>l <C-w>w
nnoremap <Leader>h <C-w>W

nnoremap <Leader>* *

nnoremap <Leader><Leader> :noh<CR>
