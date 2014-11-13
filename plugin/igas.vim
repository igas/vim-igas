" Turn off Vi-compatibility
set nocompatible

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

" Turn off soft wrap
set nowrap
"set cpoptions+=n
"let &showbreak='↪ '

" Use visual bell instead of beeping
set visualbell

" Backspace delete behavior in insert mode
set backspace=indent,eol,start

" Turn off backups for overwriting files
set nobackup
set nowritebackup

" Old school 80 columns width
set colorcolumn=81

" Show partial command
set showcmd

" Automatically read file changed outside vim
set autoread

" Set new splits position
set splitbelow
set splitright

" Indent new lines
set autoindent
set smartindent

" Enchanced completion menu
set wildmenu

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Indentation
set expandtab
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2

" Plug Settings

" NERD Tree
map <C-n> :NERDTreeToggle<CR>
