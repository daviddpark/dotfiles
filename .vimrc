execute pathogen#infect()
syntax on
filetype plugin indent on
set background=dark
set modeline
set ts=4 et sw=4 sts=4
set incsearch
set ignorecase
set smartcase
set hlsearch
"" Disable highlight with \q
:nmap \q :nohlsearch<CR>
:nmap <C-e> :e#<CR>
:nmap <C-n> :bnext<CR>
:nmap <C-p> :bprev<CR>
