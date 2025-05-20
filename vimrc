if v:progname =~? "evim"
	finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

" netrw
let g:netrw_banner=0
"let g:netrw_liststyle=3
let g:netrw_sizestyle="H"
"let g:netrw_sort_by="time"
let g:netrw_altv=1

"
"set nobackup
"set noswapfile
"set noundofile
set hlsearch
set ignorecase
set smartcase
set foldmethod=marker
set hidden
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set linebreak
set clipboard=unnamedplus
set cursorline
set lazyredraw
set breakindent
set history=100
"set wildmenu

set laststatus=2
set statusline+=%<%F\ %h%m%r
set statusline+=%=
set statusline+=l-%l/%L
set statusline+=%10.(c-%c%)
set statusline+=%10.([%n]%)

nnoremap <space> <Nop>
let mapleader = " "

nnoremap <silent> <leader>w <c-w>
nnoremap <silent> <leader>U gUiw
nnoremap <silent> <leader>u guiw
nnoremap <silent> <leader>q :q<cr>
nnoremap <silent> <leader>h :noh<cr>
nnoremap <silent> <leader>r :set relativenumber!<cr>
nnoremap <silent> <leader>n :set number!<cr>
nnoremap <silent> <tab> <c-^>


function! PySetup()
	nnoremap <buffer> <silent> <F5> :w<cr>:! clear && python3 %<cr>
	nnoremap <buffer> <silent> <F6> :w<cr>:! clear && python3 -i %<cr>
    setlocal number
    setlocal relativenumber
endfunction

autocmd BufRead,BufNewFile *.py call PySetup()
