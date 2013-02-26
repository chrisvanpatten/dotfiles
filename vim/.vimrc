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
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'vim-scripts/bufkill.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'


" ============
" = Syntaxes =
" ============
Bundle 'vesan/scss-syntax.vim'
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-markdown'

filetype plugin indent on


" ============
" = Syntaxes =
" ============

" Disable all auto comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" *.scss
au BufRead,BufNewFile *.scss set filetype=scss
autocmd FileType scss setlocal shiftwidth=4 tabstop=4

" *.css
autocmd FileType css setlocal shiftwidth=4 tabstop=4

" *.js
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4

" *.php
autocmd FileType php setlocal shiftwidth=4 tabstop=4

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
let NERDTreeIgnore = ['\.DS_Store$']

" minibufexpl.vim
let g:miniBufExplorerMoreThanOne = 1 " Always show MBE
let g:statusLineText = '%=Vim! '     " Custom status line

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

" solarized
call togglebg#map("<F5>")
set background=dark
colorscheme solarized
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1

set number     " Show line numbers
set cursorline " Highlight current line
set rnu        " Relative line numbers

set showmatch  " Brackets/braces

" Search
set incsearch  " Incremental search
set hlsearch   " Highlight search results

" Nicer invisible characters
set listchars=tab:▸\ ,eol:¬,trail:·

set so=5       " Keep the cursor in the middle


" ===============================
" = Keyboard Shortcuts/Mappings =
" ===============================

" Remap leader
let mapleader = ","

" Navigate through buffers
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

" Fix keymapping for tmux
map <Esc>[B <Down>

" Toggle invisible characters
nmap <leader>l :set list!<CR>

" Toggle NERDTree
nmap <leader>t :NERDTreeToggle<CR>

" Toggle minibufexpl
nmap <leader>r :TMiniBufExplorer<CR>

" nohls
nmap <leader>e :nohls<CR>

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
