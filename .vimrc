set nocompatible              " be iMproved, required
set nowrap
set backspace=indent,eol,start
set nu
set ts=4
set sts=4
set clipboard=unnamed
set smartindent
set autoindent
set tabstop=4
set expandtab
set shiftwidth=4
set hidden
set re=2
set ttyfast
set lazyredraw 
filetype plugin on
filetype on
" Set up vertical vs block cursor for insert/normal mode
if &term =~ "screen.*"
    let &t_ti.="\eP\e[1 q\e\\"
    let &t_SI.="\eP\e[5 q\e\\"
    let &t_EI.="\eP\e[1 q\e\\"
    let &t_te.="\eP\e[0 q\e\\"
else
    let &t_ti.="\<Esc>[1 q"
    let &t_SI.="\<Esc>[5 q"
    let &t_EI.="\<Esc>[1 q"
    let &t_te.="\<Esc>[0 q"
endif


" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>] :bnext<CR>

" Move to the previous buffer
nmap <leader>[ :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

filetype off                  " required
syntax on
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'preservim/nerdcommenter'
Plugin 'chrisbra/csv.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'preservim/nerdtree'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

"let g:airline_powerline_fonts = 1
"if !exists('g:airline_symbols')
    "let g:airline_symbols = {}
"endif

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

