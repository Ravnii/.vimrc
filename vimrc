""""""""""""""""""""""""""""""""""
"        Vundle specific         "
""""""""""""""""""""""""""""""""""
set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle.
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'groenewege/vim-less'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/syntastic'
Plugin 'leafgarland/typescript-vim'
Plugin 'fatih/vim-go'
Plugin 'marciomazza/vim-brogrammer-theme'
Plugin 'scwood/vim-hybrid'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-fugitive'
Plugin 'joonty/vim-phpunitqf'
Plugin 'airblade/vim-gitgutter'
Plugin 'wesQ3/vim-windowswap'

call vundle#end()
filetype plugin indent on

""""""""""""""""""""""""""""""""""
"        General settings        "
""""""""""""""""""""""""""""""""""
set path+=**
set wildmenu

" Set map leader
let mapleader=","

" use git to exclude som files and folders
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" use persistent cache location
let g:ctrlp_cahe_dir = $HOME . '/.cache/ctrlp'

" kepp ache even when existing vim
" let g:ctrlp_clear_cache_on_exit = 0

" custom ignore files/folders
let g:ctrlp_custom_ignore = {'dir': 'vendor'}

" No wrap
set nowrap

" UTF-8 encoding, duurh
set encoding=utf-8

" Put vim in 256-color mode
set t_Co=256

" Turns on syntax highlighting
syntax on

" Colorscheme
set background=dark
colorscheme brogrammer

" Show line numbers
set number

" Gutter width
set numberwidth=4

" Always show statusbar
set laststatus=2

" Show ruler
set ruler

" Show information about current command
set showcmd

" Turn backup off + no swap files
set nobackup
set nowb
set noswapfile

" Disable match paren
let loaded_matchparen = 1

" Highlight active line
set cursorline

" Don't show invisible characters
set nolist

" Do not redraw while running macros
set lazyredraw

" Sets how many columns a tab spans
set tabstop=4

" Sets how many columns a new tab spans. Just use same as tabstop
set softtabstop=4

" Sets how many columns to use on indention
set shiftwidth=4

" Tabs should not be replaced by spaces
set expandtab

" Keep same indentation on next line
set autoindent

""""""""""""""""""""""""""""""""""
"        Search settings         "
""""""""""""""""""""""""""""""""""
" Case insensitive search (+ smart search)
set ignorecase
set smartcase

" Set incremental search (search as you type)
set incsearch

" Highligh search results
set hlsearch

""""""""""""""""""""""""""""""""""
"       Syntastic settings       "
""""""""""""""""""""""""""""""""""
autocmd FileType javascript let b:syntastic_checkers = findfile('.jscsrc', '.;') != '' ? ['jscs'] : ['jshint']
let g:syntastic_php_phpcs_args="--report=csv --standard=PSR2 --encoding=utf-8 -n"

""""""""""""""""""""""""""""""""""
"           Keymappings          "
""""""""""""""""""""""""""""""""""
" Fix whitespace
nmap <leader>cw :StripWhitespace<cr>

" Escape
imap <leader>e <Esc>

" Splits
nmap <leader>v :vs<cr>
nmap <leader>h :sp<cr>

" Tabs
nmap <leader>t :tabnew<cr>
imap <leader>t <Esc>:tabnew<cr>
nmap <leader><tab> gt
nmap <leader><s-tab> gT

" Fast writing
nmap <leader>w :w<cr>

" Fast exit
nmap <leader>q :q<cr>

" Fast searching
nmap <leader><Space> /

" Fast autocomplete
imap <leader>o <c-n>
imap <leader>p <c-p>

" Ex fast
nmap <leader>f :Ex<cr>

" No highlight
nmap <leader>n :noh<cr>

" Put into paste mode
nmap <leader>s :set paste!<cr>

" Reload file
nmap <leader>r :e<cr>

" Insert new line without entering insert mode
nmap <C-o> O<Esc>
nmap <CR> o<Esc>

" Move between splits with Ctrl + (h|j|k|l)
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
