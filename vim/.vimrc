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

" For plugins to load correctly
call vundle#end()        
filetype plugin indent on

" Turn on syntax highlighting
syntax on

" Lightline status bar configuration
set laststatus=2
let g:lightline = {'colorscheme':'solarized dark'}
