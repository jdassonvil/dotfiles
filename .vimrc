" Enable loading the plugin files for specific file types
:filetype plugin on

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
let g:go_fmt_command = "goimports"

" Prevent from using arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Enable airline fonts and color
let g:airline_powerline_fonts = 1

" Python
set autowrite
" Go
autocmd FileType go map <C-n> :cnext<CR>
autocmd FileType go map <C-m> :cprevious<CR>
autocmd FileType go nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)


function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
