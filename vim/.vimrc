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
set noshowmode

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'

call plug#end()

colorscheme ayu

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:NERDSpaceDelims = 1

let g:NERDTreeWinPos = "right"

let mapleader = " "

nnoremap <C-Right> :bnext<CR>
nnoremap <C-Left> :bprevious<CR>
nnoremap <Leader>bd :bd<CR>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

nnoremap <Leader>sh :split<CR>
nnoremap <Leader>sv :vsplit<CR>

nnoremap <C-l> <C-w>w
nnoremap <C-h> <C-w>W

nnoremap <Leader><Leader> :noh<CR>

nnoremap <Leader>e :NERDTreeToggle<CR>

nnoremap x "_x
vnoremap d "_d
nnoremap dd "_dd
nnoremap D "_D
