" enable syntax coloration
syntax on

" Set encoding
set encoding=utf-8

" Completion on files
set wildmenu

" Avoid exceeding 120 characters per line
set colorcolumn=120

" tab using 2 tests
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" display line numbers
set number

" display the command you type in command mode
set showcmd
" display the curent cursor position
set ruler

" " Move easily between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" More natural split opening
set splitbelow
set splitright

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

" Remap VIM 0 to the fist non blank character
map 0 ^

" Delete trailing white space on save of JS or PY files
 func! DeleteTrailingWS()
   exe "normal mz"
   %s/\s\+$//ge
   exe "normal `z"
endfunc
autocmd BufWrite *.js :call DeleteTrailingWS()
autocmd BufWrite *.py :call DeleteTrailingWS()
