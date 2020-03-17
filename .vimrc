set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()		" required, all plugins must appear after this line.

Plugin 'gmarik/Vundle.vim'							" Vundle
Plugin 'vim-airline/vim-airline'					" Airline
Plugin 'vim-airline/vim-airline-themes'				" Airline Themes

call vundle#end()		" required, all plugins must appear before this line.

execute pathogen#infect()
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

:imap ii <Esc>

no <Up> <Nop>
no <Down> <Nop>
no <Left> <Nop>
no <Right> <Nop>

ino <Up> <Nop>
ino <Down> <Nop>
ino <Left> <Nop>
ino <Right> <Nop>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

set rtp+=/usr/share/powerline/bindings/vim/

set laststatus=2

" set t_Co=256

syntax on   
set relativenumber
set number
set showcmd
let g:rehash256 = 1
let g:Powerline_symbols='unicode'
let g:Powerline_theme='long'

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized_flood'

set noshowmode

set expandtab

set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

hi LineNr ctermfg=242
hi CursorLineNr ctermfg=15
hi VertSplit ctermfg=8 ctermbg=0
hi Statement ctermfg=3

set splitbelow splitright

set wildmenu					" Display all matches when tab complete.
set incsearch
set nobackup
set noswapfile

syntax on
