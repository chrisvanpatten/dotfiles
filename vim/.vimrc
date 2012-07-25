set nocompatible
filetype off
set encoding=utf-8

" Set up vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


" ===========
" = Plugins =
" ===========

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'vim-scripts/bufkill.vim'
Bundle 'cakebaker/scss-syntax.vim'

filetype plugin indent on


" ============
" = Syntaxes =
" ============

" These are not the droids you are looking for.


" ========================
" = Plugin Customization =
" ========================

" Powerline
set laststatus=2
let g:Powerline_symbols = 'unicode'
let g:Powerline_colorscheme = 'default'

" NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeMouseMode = 2
autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif

" MiniBufExplorer
let g:miniBufExplMapWindowNavArrows = 1  " Ctrl+arrows to navigate buffers
let g:miniBufExplUseSingleClick = 1      " Navigate between buffers with one click
let g:miniBufExplorerMoreThanOne = 1     " Always show MBE
let g:statusLineText = '%=Vim! '         " Custom status line

" Syntastic
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'passive_filetypes': ['scss'] }

" =====================
" = Behavior Settings =
" =====================
set ignorecase
set title        " Nicer title

" No junk files
set nobackup
set nowritebackup
set noswapfile

set mouse=a      " Enable the mouse
set history=1000 " Longer history

set hidden       " Enable hidden buffers

" ===================
" = Visual Settings =
" ===================
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"

set number     " Show line numbers
set cursorline " Highlight current line

set showmatch  " Brackets/braces

" Search
set incsearch  " Incremental search
set hlsearch   " Highlight search results

" ===============================
" = Keyboard Shortcuts/Mappings =
" ===============================

" Navigate through buffers
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

" Delete buffers instead of quitting them
":cnoreabbrev wq w<bar>bd
":cnoreabbrev q bd

" Fix keymapping for tmux
map <Esc>[B <Down>

" ===================
" = Text Formatting =
" ===================

set tabstop=4


" =============
" = Functions =
" =============

" Strip trailing whitespace
function! StripWhitespace ()
	exec ':%s/ \+$//gc'
endfunction
map ,s :call StripWhitespace ()<CR>

" Exit
au BufEnter * call MyLastWindow()
function! MyLastWindow()
  " if the window is quickfix go on
  if &buftype=="nofile"
    " if this window is last on screen quit without warning
	if winnr('$') < 3 && winbufnr(2) == -1
      q!
    endif
  endif
endfunction
