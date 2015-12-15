" enable syntax coloration
syntax on

" Set encoding
set encoding=utf-8

" Completion on files
set wildmenu

" Avoid exceeding 120 characters per line
set colorcolumn=120

" tab using 4 tests
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" map tabp and tabn
nmap <F7> :tabp <CR>
nmap <F8> :tabn <CR>

" display line numbers
set number
" display the command you type in command mode
set showcmd

" display the curent cursor position
set ruler

" Move easily between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Turn backup off
set nobackup
set nowb
set noswapfile

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines