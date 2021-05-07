set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'petobens/poet-v'
Plugin 'dense-analysis/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:ale_linters = {'python': ['flake8', 'black']}
let g:ale_virtualenv_dir_names = ['env', '.env', 'venv', 'virtualenv', '/Users/jerome/Library/Caches/pypoetry/virtualenvs/mongo-toolbox-XZP5r6KS-py3.8']

" enable syntax coloration
syntax on

" Set encoding
set encoding=utf-8

" No enpty trailing line
set noeol

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

" Handle paste gracefully
"set paste

" Delete trailing white space on save of JS or PY files
 func! DeleteTrailingWS()
   exe "normal mz"
   %s/\s\+$//ge
   exe "normal `z"
endfunc
autocmd BufWrite *.js :call DeleteTrailingWS()
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.json :call DeleteTrailingWS()

" format with goimports instead of gofmt
"let g:go_fmt_command = "goimports"

" Prevent from using arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Enable airline fonts and color
let g:airline_powerline_fonts = 1

" Python
set autowrite
let g:syntastic_python_python_exec = 'python3' 
