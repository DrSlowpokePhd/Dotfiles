set laststatus=2
set number
set clipboard=unnamedplus
filetype off
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'rust-lang/rust.vim'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'ycm-core/YouCompleteMe'
call vundle#end()

syntax on
filetype plugin indent on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set background=dark " dark mode for gruvbox
set t_Co=256
colorscheme gruvbox
let g:airline_theme='gruvbox'


