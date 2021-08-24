set nocompatible
set encoding=utf-8
filetype off


" ===========
" = Plugins =
" ===========

" Download vim-plug if not already available
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Set up vim-plug
set rtp+=~/.vim/autoload/plug.vim
call plug#begin('~/.vim/plugins')

" Plugins
Plug 'altercation/vim-colors-solarized'
Plug 'ap/vim-buftabline'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'godlygeek/tabular'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'myusuf3/numbers.vim'
Plug 'neoclide/coc.nvim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/bufkill.vim'
Plug 'vim-test/vim-test'
Plug 'vim-vdebug/vdebug'

" Syntaxes
Plug 'cakebaker/scss-syntax.vim'
Plug 'jwalton512/vim-blade'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'rodnaph/jinja.vim'
Plug 'tpope/vim-markdown'
Plug 'vim-ruby/vim-ruby'

call plug#end()


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
set guicursor=

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

" Faster update time
set updatetime=300


" ===========
" = Plugins =
" ===========

" Vdebug
if !exists('g:vdebug_options')
	let g:vdebug_options = {}
endif
let g:vdebug_options.path_maps = {"/var/www/html": "/Users/cvanpatten/code/nba-teams-cms"}

" Vim Test
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>

" Default COC extensions
let g:coc_global_extensions = [
\ 'coc-git',
\ 'coc-json',
\ 'coc-phpls',
\ 'coc-prettier',
\ 'coc-psalm'
\ ]

let g:coc_disable_startup_warning = 1

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nmap <leader>rn <Plug>(coc-rename)

autocmd bufwritepost *.php silent !./vendor/bin/phpcbf -q % > /dev/null || true
set autoread
