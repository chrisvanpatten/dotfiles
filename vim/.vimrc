set nocompatible
filetype off
set encoding=utf-8

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'

filetype plugin indent on


" ========================
" = Plugin Customization =
" ========================

" Powerline
set laststatus=2
let g:Powerline_symbols = 'fancy'
let g:Powerline_colorscheme = 'default'


" =====================
" = Behavior Settings =
" =====================
set ignorecase

" No junk files
set nobackup
set nowritebackup
set noswapfile


" ===================
" = Visual Settings =
" ===================
syntax enable
set background=dark
colorscheme solarized
set number     " Show line numbers
set hlsearch   " Highlight search results
