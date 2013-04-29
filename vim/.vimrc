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


" ========================
" = Plugin Customization =
" ========================

" vim-powerline
set laststatus=2
let g:Powerline_symbols = 'unicode'

" nerdtree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let NERDTreeIgnore = ['\.DS_Store$']

" minibufexpl.vim
let g:miniBufExplorerMoreThanOne = 1 " Always show MBE
let g:statusLineText = '%=Vim! '     " Custom status line

" zencoding-vim
let g:user_zen_expandabbr_key = '<S-Tab>'
let g:user_zen_settings = {
  \ 'indentation' : '	'
  \ }

" vim-numbertoggle
let g:NumberToggleTrigger = '<F9>'

" ctrlp
let g:ctrlp_map = '<c-m-p>'
let g:ctrlp_custom_ignore = {
  \ 'dir': 'wp',
  \ }


" ============
" = Syntaxes =
" ============

Bundle 'vesan/scss-syntax.vim'
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-markdown'
Bundle 'vim-ruby/vim-ruby'

filetype plugin indent on

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


" =====================
" = Behavior Settings =
" =====================

set ignorecase
set title        " Nicer title
set history=1000 " Longer history
set hidden       " Enable hidden buffers
set tabstop=4    " Tab width

set nobackup     " No junk files
set nowritebackup
set noswapfile


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
set so=5       " Keep the cursor in the middle

" Search
set incsearch  " Incremental search
set hlsearch   " Highlight search results

" Nicer invisible characters
set listchars=tab:▸\ ,eol:¬,trail:·


" ===============================
" = Keyboard Shortcuts/Mappings =
" ===============================

" Fix keymapping for tmux
map <Esc>[B <Down>

" Remap leader
let mapleader = ","

" Navigate through buffers
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

" Toggle invisible characters
nmap <leader>l :set list!<CR>

" Disable search result highlighting
nmap <leader>e :nohls<CR>

" Toggle plugins
nmap <leader>t :NERDTreeToggle<CR>
nmap <leader>r :TMiniBufExplorer<CR>
nmap <leader>c :CtrlP<CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>


" =============
" = Functions =
" =============

" Strip trailing whitespace
function! StripWhitespace ()
	exec ':%s/ \+$//gc'
endfunction
map <Leader>s :call StripWhitespace ()<CR>
