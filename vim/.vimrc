set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim,~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'rust-lang/rust.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'lervag/vimtex'
Plugin 'dense-analysis/ale'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'Shougo/deoplete.nvim'
Plugin 'deoplete-plugins/deoplete-zsh'
Plugin 'deoplete-plugins/deoplete-jedi'
Plugin 'sebastianmarkow/deoplete-rust'
Plugin 'takkii/Bignyanco'
" Plugin 'poppyschmo/deoplete-latex'

call vundle#end()

" Enable Linters
let g:livepreview_previewer = 'zathura'
let g:ale_linters = {
    \'c': ['gcc'],
    \'dart': ['dartfmt'],
    \'ruby': ['ruby'],
    \'rust': ['rls'],
    \}

let g:max_list = 10 

" Deoplete custom options
" call deoplete#custom#option({})
call deoplete#custom#var('omni', 'input_patterns', {
     \ 'tex': g:vimtex#re#deoplete
     \})

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:Tex_ViewRule_pdf = "zathura"


syntax on
set shell=zsh
" let mapleader = " "
" let g:mapleader="\"
filetype indent plugin on
colorscheme gruvbox 
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:vimtex_compiler_progname = 'nvr'
let g:python_host_prog = '/usr/bin/python2.7'
let g:deoplete#enable_at_startup = 1
set clipboard+=unnamedplus
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set shiftround
set autoindent
set number
set relativenumber
set ttyfast
"set autofast
"set hisearch

map <F8> :FZF <Enter>
nmap <S-Tab> :NERDTreeToggle <Enter>
nmap <A-Tab> :tabNext <Enter>
nmap <C-t> :tabnew <Enter> :e
nmap <C-]> :tabNext <Enter>
nmap <C-[> :tabprevious <Enter> 
imap <C-e> <esc>$i<right>
imap <C-a> <esc>0i

