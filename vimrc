"Toggles and switches
filetype plugin indent on
syntax on
set encoding=utf-8
set background=light
colorscheme solarized
set number
set hidden
set wildmenu
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=2
set tabstop=2
set hlsearch
set showcmd
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set incsearch
set ruler
set cmdheight=2

"Keymaps
let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 800
nnoremap <Space> <Nop>
cnoremap jk <ESC>
cnoremap kj <ESC>
noremap o o<ESC>
noremap O O<ESC>

let mapleader = ","
let maplocalleader = ","

let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpForwardTrigger = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"

nnoremap g- g;

"Window moving
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-x> <C-w>x

let g:tex_flavor = "latex"

" Font for MacVim
set guifont=SF\ Mono\ Light:h12

" Comment strings
autocmd FileType gnuplot setlocal commentstring=#\ %s
autocmd FileType c setlocal commentstring=//\ %s
