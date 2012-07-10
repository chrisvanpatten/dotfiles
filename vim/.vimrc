set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'

filetype plugin indent on

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
