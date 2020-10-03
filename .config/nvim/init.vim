let mapleader =","

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))

Plug 'vim-airline/vim-airline'					" Airline
Plug 'vim-airline/vim-airline-themes'				" Airline Themes
Plug 'chrisbra/Colorizer'

call plug#end()

" execute pathogen#infect()
filetype plugin indent on    " required

set nocompatible              " be iMproved, required
filetype off                  " required

:imap jj <Esc>

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

syntax on   
set relativenumber
set laststatus=2
set number
set showcmd
set noshowmode
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set splitbelow splitright

let g:rehash256 = 1
let g:Powerline_symbols='unicode'
let g:Powerline_theme='long'

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized_flood'




" 1 tab == 4 spaces

hi LineNr ctermfg=242
hi CursorLineNr ctermfg=15
hi VertSplit ctermfg=8 ctermbg=0
hi Statement ctermfg=3


set wildmenu					" Display all matches when tab complete.
set incsearch
set nobackup
set noswapfile

map <leader>h :ColorHighlight
