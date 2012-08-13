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
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'vim-scripts/bufkill.vim'
Bundle 'vesan/scss-syntax.vim'
Bundle 'othree/html5.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
Bundle 'godlygeek/tabular'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-markdown'

filetype plugin indent on


" ============
" = Syntaxes =
" ============

" *.scss
au BufRead,BufNewFile *.scss set filetype=scss
autocmd FileType scss setlocal shiftwidth=4 tabstop=4

" *.js
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4

" *.html
autocmd FileType html setlocal shiftwidth=4 tabstop=4


" ========================
" = Plugin Customization =
" ========================

" vim-powerline
set laststatus=2
let g:Powerline_symbols = 'unicode'
let g:Powerline_colorscheme = 'default'

" nerdtree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeMouseMode = 2
autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif

" minibufexpl.vim
let g:miniBufExplMapWindowNavArrows = 1  " Ctrl+arrows to navigate buffers
let g:miniBufExplUseSingleClick = 1      " Navigate between buffers with one click
let g:miniBufExplorerMoreThanOne = 1     " Always show MBE
let g:statusLineText = '%=Vim! '         " Custom status line

" syntastic
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'passive_filetypes': ['scss', 'html'] }
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

" zencoding-vim
let g:user_zen_expandabbr_key = '<S-Tab>' 
let g:user_zen_settings = {
  \  'indentation' : '	'
  \}

" vim-numbertoggle
let g:NumberToggleTrigger = '<F9>'


" =====================
" = Behavior Settings =
" =====================

set ignorecase
set title        " Nicer title

" No junk files
set nobackup
set nowritebackup
set noswapfile

" set mouse=a      " Enable the mouse
set history=1000 " Longer history

set hidden       " Enable hidden buffers


" ===================
" = Visual Settings =
" ===================

syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors = 256
let g:solarized_contrast = "normal"
let g:solarized_visibility = "low"

set number     " Show line numbers
set cursorline " Highlight current line
set rnu        " Relative line numbers

set showmatch  " Brackets/braces

" Search
set incsearch  " Incremental search
set hlsearch   " Highlight search results

" Nicer invisible characters
set listchars=tab:▸\ ,eol:¬,trail:·


" ===============================
" = Keyboard Shortcuts/Mappings =
" ===============================

" Remap leader
let mapleader = ","

" Navigate through buffers
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

" Delete buffers instead of quitting them
":cnoreabbrev wq w<bar>bd
":cnoreabbrev q bd

" Fix keymapping for tmux
map <Esc>[B <Down>

" Toggle invisible characters
nmap <leader>l :set list!<CR>

" Disable arrows in normal and visual modes
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>


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
