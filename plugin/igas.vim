" Shortcuts for moving between splits
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Encodings
set encoding=utf-8
set fileencodings=utf8,cp1251

" Fallback for bash incompatible shells like fish
set shell=bash

" Terminal number of colors
set t_Co=256

" Display unprintable characters
set list
set listchars=tab:▸\ ,eol:¬

" Display line numbers
set number

" Soft wrap
set wrap
set cpoptions+=n
let &showbreak='↪ '

" Use visual bell instead of beeping
set visualbell

" Backspace delete behavior in insert mode
set backspace=indent,eol,start
