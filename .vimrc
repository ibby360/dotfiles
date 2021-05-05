source $VIMRUNTIME/defaults.vim
set number
set shiftwidth=2
set expandtab
set autoindent
set clipboard=unnamedplus

call plug#begin()
  Plug 'itchyny/lightline.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'jiangmiao/auto-pairs'
call plug#end()

set termguicolors
set laststatus=2

syntax on
set laststatus=2
set noshowmode

