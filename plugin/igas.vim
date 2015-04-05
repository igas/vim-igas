" Turn off Vi-compatibility
set nocompatible

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

" Always show status line
set laststatus=2

" Set minimal number of screen lines to keep above and below the cursor
set scrolloff=10

" Set leader key
let mapleader = " "
let g:mapleader = " "
let maplocalleader = " "
let g:maplocalleader = " "

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" Appearance
colorscheme base16-bright

" Clipboard integration with system
set clipboard+=unnamedplus

" Plug Settings

" NERD Tree
map <C-n> :NERDTreeToggle<CR>

" Unite
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '.git',
      \ 'tmp',
      \ '.sass-cache',
      \ 'node_modules',
      \ 'bower_components',
      \ 'dist',
      \ '.pyc',
      \ '.idea',
      \ '_build',
      \ 'deps',
      \ 'public/uploads',
      \ ], '\|'))
let g:unite_enable_start_insert=1
let g:unite_prompt='» '
let g:unite_source_grep_command='ag'
let g:unite_source_grep_default_opts='--nocolor --nogroup -S -C4'
let g:unite_source_grep_recursive_opt=''
nnoremap <silent> <C-p> :Unite -no-split -buffer-name=files -start-insert file_rec/async<cr>
nnoremap <silent> <leader>b :Unite -no-split -buffer-name=buffer buffer<cr>
nnoremap <silent> <leader>/ :Unite -no-split -buffer-name=search grep:.<cr>
