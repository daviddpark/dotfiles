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

autocmd BufNewFile,BufRead *.json set ft=javascript
set statusline=%h         " Help buffer flag
set statusline+=%m        " Modified flag
set statusline+=%f        " Path to the file
set statusline+=%c        " Column number
set statusline+=/         " Separator
set statusline+=%p        " % of lines through file
set statusline+=/         " Separator
set statusline+=%=        " Switch to the right side
set statusline+=%l        " Current line
set statusline+=/         " Separator
set statusline+=%L        " Total lines
