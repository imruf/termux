let mapleader =","

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))

Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'
Plug 'chrisbra/Colorizer'
Plug 'junegunn/fzf.vim'

call plug#end()

filetype plugin indent on
filetype plugin on

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

map gz :bdelete<cr>
map gb :bnext<cr>
map gB :bprev<cr>

map <leader>te :tabe
map <leader>tn :tabnew<cr>
map <leader>tx :tabnext
map <leader>tm :tabmove
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>

map <leader>s :setlocal spell! spelllang=en_us<CR>

map <leader>h :ColorHighlight

syntax on   

set nocompatible
set laststatus=2
set t_Co=256
set encoding=utf-8
set relativenumber
set number
set showcmd
set noshowmode
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set hlsearch

set path+=**
set wildmenu
set incsearch
set nobackup
set noswapfile

set splitbelow splitright

hi LineNr ctermfg=242
hi CursorLineNr ctermfg=15
hi VertSplit ctermfg=8 ctermbg=0
hi Statement ctermfg=3

let g:rehash256 = 1

let g:lightline = {
      \ 'colorscheme': 'OldHope',
      \ }

" fzf

set rtp+=/data/data/com.termux/files/usr/bin/fzf
nnoremap <silent> <leader>f :AF<CR>
if exists('$TMUX')
  let g:fzf_layout = { 'tmux': '-p90%,60%' }
else
  let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
endif


let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

command! -nargs=? -complete=dir AF
 \ call fzf#run(fzf#wrap(fzf#vim#with_preview({
  \   'source': 'find ~/ -type f 2> /dev/null '.expand(<q-args>)
  \ })))

":vimwiki ext
let g:vimwiki_list = [{'path': '~/.config/vimwiki',
                       \ 'syntax': 'markdown', 'ext': '.md'}]

