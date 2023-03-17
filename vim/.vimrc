shttps://github.com/rockerBOO/awesome-neovim#readmeet nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim,~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after
call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs' " pairs brackets and parentheses together, like god intended
Plug 'flazz/vim-colorschemes' " all of the colorschemes, *all* of them
Plug 'skywind3000/asyncrun.vim' " run commands on a thread
Plug 'junegunn/goyo.vim' " remove distractions
Plug 'tibabit/vim-templates' " file templates
Plug 'nvim-lua/plenary.nvim' " lua api stuff for neovim
Plug 'nvim-telescope/telescope.nvim' " fun gui plugin
Plug 'sudormrfbin/cheatsheet.nvim' " nice lil cheatsheet for when you forget stuff
Plug 'nvim-lua/popup.nvim' " lua api stuff for neovim
Plug 'neovim/nvim-lspconfig' " configs for neovim built-in LSP
Plug 'nvim-treesitter/nvim-treesitter' " treesitter
Plug 'williamboman/nvim-lsp-installer' " install language servers for neovim
Plug 'mhinz/vim-startify' " neovim start page
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'} " wicked fast autocomplete 
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'} " snippets for the autocomplete
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'} " chadtree replacement for nerdtree

call plug#end()

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:Tex_ViewRule_pdf = "zathura"

syntax on
set shell=zsh
filetype indent plugin on

" Editor Theming
set background=dark
colorscheme gruvbox 
let g:python_host_prog = '/usr/bin/python'
set clipboard+=unnamedplus
" tabs are 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set shiftround
set autoindent
set number " enable line numbers
set relativenumber " enable relative line numbers (shows distance from current cursor position)
set ttyfast " makes it go faster idk, I keep this around for when I have to use vim


nmap <S-Tab> <Cmd> CHADopen <Enter>
nmap <A-Tab> :tabNext <Enter>
nmap <C-t> :tabnew <Enter> :e
nmap <C-]> :tabnext <Enter>
nmap <C-[> :tabprevious <Enter> 
nmap <leader> ff <Cmd> Telescope file_finder <Enter>
" nmap <C-F12> :AsyncStop <Enter> :exec "sleep 1" <Enter> :AsyncRun surf =(markdown %)<Enter>
nmap <F8> :Goyo <Enter> 
nmap <F9> :noh <Enter>
nmap <F12> <Cmd> Cheatsheet <Enter>
