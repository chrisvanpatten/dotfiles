set nocompatible
set encoding=utf-8
filetype off


" ===========
" = Plugins =
" ===========

" Set up vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'ap/vim-buftabline'
Plugin 'easymotion/vim-easymotion'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'vim-vdebug/vdebug'

" Syntaxes
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'jwalton512/vim-blade'
Plugin 'mxw/vim-jsx'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'rodnaph/jinja.vim'
Plugin 'tpope/vim-markdown'
Plugin 'vim-ruby/vim-ruby'

call vundle#end()


" ========================
" = Plugin Customization =
" ========================

" nerdtree
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeShowLineNumbers = 1
let NERDTreeWinPos = "right"
let NERDTreeIgnore = [ '\.DS_Store$', '\.sass-cache$', '\.vagrant$' ]
let NERDTreeCascadeSingleChildDir = 0
let NERDTreeCascadeOpenSingleChildDir = 0
let NERDTreeWinSize = 35

" emmet-vim
let g:user_emmet_expandabbr_key = '<S-Tab>'
let g:user_emmet_settings = {
  \ 'indentation' : '	'
  \ }

" ctrlp
let g:ctrlp_map = '<leader>c'
let g:ctrlp_by_filename = 1
let g:ctrlp_use_caching = 0
let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = ''
let g:ctrlp_custom_ignore = {
  \ 'dir': 'vendor\|public/wp\|build\|public/assets\|node_modules\|platforms/ios\|tmp/cache\|.git\|.sass-cache\|.vagrant',
  \ }

" numbers.vim
let g:numbers_exclude = []

" buftabline
let g:buftabline_show = 1
let g:buftabline_indicators = 1
let g:buftabline_numbers = 1


" ============
" = Syntaxes =
" ============

" Enable plugin indentation
filetype plugin indent on

" Set a default tabstop
set ts=4

" SCSS
au BufRead,BufNewFile *.scss set filetype=scss
autocmd FileType scss setlocal sw=4 ts=4

" CSS
autocmd FileType css setlocal sw=4 ts=4

" HTML
autocmd FileType html setlocal sw=4 ts=4

" JavaScript
autocmd FileType javascript setlocal sw=2 ts=2 expandtab

" PHP
autocmd FileType php setlocal sw=4 ts=4

" Ruby
autocmd FileType ruby setlocal et sw=2 ts=2 sts=2

" YAML
autocmd FileType yaml setlocal et sw=2 ts=2 sts=2

" Twig
au BufRead,BufNewFile *.twig set filetype=htmljinja
autocmd FileType htmljinja setlocal sw=4 ts=4


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

syntax enable      " Syntax highlighting
set cursorline     " Highlight current line
set number
set rnu
set so=5           " Keep the cursor in the middle (ish)
set showmatch      " Brackets/braces: highlight match
set laststatus=0   " Disable statusline
set colorcolumn=80 " Mark off column 80

" solarized
set background=dark
colorscheme solarized
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1

" Nicer invisible characters
set listchars=tab:▸\ ,eol:¬,trail:·


" ===============================
" = Keyboard Shortcuts/Mappings =
" ===============================

" Fix keymapping for tmux
map <Esc>[B <Down>

" Navigate through buffers
nmap <C-n> :bnext<CR>
nmap <C-p> :bprevious<CR>

nnoremap <silent> <Up>   gk
nnoremap <silent> <Down> gj

" Use ctrl-[hjkl] to select the active split
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Allow using . to repeat a command over a multiline
" selection while in visual mode
vnoremap . :normal .<CR>

" Remap leader
let mapleader = ","

" Toggle invisible characters
nmap <leader>l :set list!<CR>

" Disable search result highlighting
nmap <leader>e :nohls<CR>

" Toggle paste mode
set pastetoggle=<leader>x

" Toggle plugins
nmap <leader>t :NERDTreeToggle<CR>
nmap <leader>1 :NumbersToggle<CR>
nmap <leader>2 :set invnumber<CR>
call togglebg#map("<leader>q")

" Work around a strange backspace config 
" @see https://unix.stackexchange.com/a/307974
set backspace=indent,eol,start

" =============
" = Functions =
" =============

" Strip trailing whitespace
function! StripWhitespace ()
	exec ':%s/ \+$//gc'
endfunction
map <Leader>s :call StripWhitespace ()<CR>
