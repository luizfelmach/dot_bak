" Global Settings

set number
set termguicolors
set tabstop=2
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent
set hidden
set incsearch
set ignorecase
set smartcase
set scrolloff=8
set cmdheight=2
set updatetime=300
set encoding=utf-8
set nobackup
set nowritebackup
set splitright
set splitbelow
set autoread
set mouse=a
set clipboard=unnamedplus
set shortmess+=c
set cursorline
set shell=/usr/bin/zsh

filetype on
filetype plugin on
filetype indent on

syntax on

colorscheme dracula

" Airline

let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#branch#enabled = 1

" CtrlP

let g:ctrlp_show_hidden = 1

" NerdCommenter

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

" LSP

let g:LanguageClient_serverCommands = {
    \ 'c': ['clangd'],
    \ 'cpp': ['clangd']
    \ }
let g:LanguageClient_autoStart = 1
let g:deoplete#enable_at_startup = 1

" Vim Rainbow

let g:rainbow_active = 1

