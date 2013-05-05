set nocompatible
set encoding=utf-8


" ===========
" = Plugins =
" ===========

" Set up vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'vim-scripts/bufkill.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'myusuf3/numbers.vim'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'


" ========================
" = Plugin Customization =
" ========================

" vim-powerline
set laststatus=1
let g:Powerline_symbols = 'unicode'

" nerdtree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let NERDTreeIgnore = ['\.DS_Store$']

" minibufexpl.vim
let g:statusLineText = '%=Vim! '     " Custom status line

" zencoding-vim
let g:user_zen_expandabbr_key = '<S-Tab>'
let g:user_zen_settings = {
  \ 'indentation' : '	'
  \ }

" vim-numbertoggle
" let g:NumberToggleTrigger = '<F9>'

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

" Enable plugin indentation
filetype plugin indent on

" Set a default tabstop
set ts=4

" Disable all auto comments
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" *.scss
au BufRead,BufNewFile *.scss set filetype=scss
autocmd FileType scss setlocal sw=4 ts=4

" *.css
autocmd FileType css setlocal sw=4 ts=4

" *.js
autocmd FileType javascript setlocal sw=4 ts=4

" *.php
autocmd FileType php setlocal sw=4 ts=4

" *.html
autocmd FileType html setlocal sw=4 ts=4

" *.rb
autocmd FileType ruby setlocal et sw=2 ts=2 sts=2


" =====================
" = Behavior Settings =
" =====================

set title        " Nicer title
set history=1000 " Longer history
set hidden       " Enable hidden buffers

set nobackup     " No junk files
set nowritebackup
set noswapfile

" Search
set ignorecase   " Case insensitive search
set incsearch    " Incremental search
set hlsearch     " Highlight search results

" Fix for delay with O
set timeout timeoutlen=1000 ttimeoutlen=100


" ===================
" = Visual Settings =
" ===================

syntax enable  " Syntax highlighting

" solarized
call togglebg#map("<F5>")
set background=dark
colorscheme solarized
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1

set number     " Show line numbers
set rnu        " Relative line numbers
set cursorline " Highlight current line
set so=5       " Keep the cursor in the middle (ish)
set showmatch  " Brackets/braces: highlight match

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
nmap <leader>1 :NumbersToggle<CR>
nmap <leader>2 :set invnumber<CR>

" Use ctrl-[hjkl] to select the active split
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
