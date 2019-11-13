"                                   
"                    ██▒   █▓ ██▓ ███▄ ▄███▓ ██▀███   ▄████▄  
"                   ▓██░   █▒▓██▒▓██▒▀█▀ ██▒▓██ ▒ ██▒▒██▀ ▀█  
"                    ▓██  █▒░▒██▒▓██    ▓██░▓██ ░▄█ ▒▒▓█    ▄ 
"                     ▒██ █░░░██░▒██    ▒██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒
"                      ▒▀█░  ░██░▒██▒   ░██▒░██▓ ▒██▒▒ ▓███▀ ░
"                      ░ ▐░  ░▓  ░ ▒░   ░  ░░ ▒▓ ░▒▓░░ ░▒ ▒  ░
"                      ░ ░░   ▒ ░░  ░      ░  ░▒ ░ ▒░  ░  ▒   
"                        ░░   ▒ ░░      ░     ░░   ░ ░        
"                         ░   ░         ░      ░     ░ ░      
"                        ░                           ░      
" Author: Marcello Lins
" .vimrc + vim cheatsheet for hard to remember commands
"
" -- Buffer Management
" :ls list buffers
" :bad[d] add buffer to list 
" :bn navigate to previous buffer
" :bp navigate to next buffer
" :ball open all buffers as windows
"
" -- Splits
" :sp horizontal split (takes file name as argument)
" :vsp vertical split (takes file name as argument)
" :vert bn# opens buffer index# as a vertical split

" Don't try to be vi compatible
set nocompatible
set shell=/bin/bash

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Vundle Plugin Manager (https://github.com/VundleVim/Vundle.vim) 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" List of Plugins to Install via Vundle
Plugin 'itchyny/lightline.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'surround.vim'
Plugin 'ericbn/vim-relativize'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'

" For plugins to load correctly
call vundle#end()        
filetype plugin indent on

" Changing <Leader> key
let mapleader = ","

" Turn on syntax highlighting
syntax on

" Shows absolute and relative line numbers
set number relativenumber

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Showing Tabs
set list
set listchars=tab:>-

" Splits (more natural split destinations)
set splitbelow
set splitright
map <Leader>wh :split<CR>
map <Leader>wv :vsplit<CR>

" Lightline status bar configuration
set laststatus=2
let g:lightline = {'colorscheme':'solarized'}

" Control + direction to change VIM panels
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Move to the previous buffer with "gp"
nnoremap gp :bp<CR>

" Move to the next buffer with "gn"
nnoremap gn :bn<CR>

" Tagbar
" nmap <F8> :TagbarToggle<CR>

" NerdTREE
map <C-n> :NERDTreeToggle<CR>
  " Open NerdTREE automatically if no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  " Closes NerdTree if it is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

