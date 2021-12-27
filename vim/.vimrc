set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim,~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after
call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
"Plug 'lervag/vimtex'
Plug 'jiangmiao/auto-pairs'
"Plug 'xuhdev/vim-latex-live-preview'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ajmwagar/vim-deus'
Plug 'flazz/vim-colorschemes' 
Plug 'skywind3000/asyncrun.vim' 
Plug 'junegunn/goyo.vim' " remove distractions
Plug 'SirVer/ultisnips' " snippet plugin
Plug 'tibabit/vim-templates'
Plug 'OmniSharp/omnisharp-vim'
Plug 'honza/vim-snippets'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'sudormrfbin/cheatsheet.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'neovim/nvim-lspconfig'

call plug#end()

" Enable Linters
" let g:livepreview_previewer = 'zathura'
let g:max_list = 10 

" UltiSnips settings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Deoplete custom options
" call deoplete#custom#option({})
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:Tex_ViewRule_pdf = "zathura"

syntax on
set shell=zsh
" let mapleader = " "
" let g:mapleader="\"
filetype indent plugin on

" Editor Theming
set background=dark
colorscheme default
" let g:airline_theme='google'
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

nmap <S-Tab> <Cmd> CocCommand explorer <Enter>
nmap <A-Tab> :tabNext <Enter>
nmap <C-t> :tabnew <Enter> :e
nmap <C-]> :tabnext <Enter>
nmap <C-[> :tabprevious <Enter> 
imap <C-e> <esc>$i<right>
imap <C-a> <esc>0i
" nmap <C-F12> :AsyncStop <Enter> :exec "sleep 1" <Enter> :AsyncRun surf =(markdown %)<Enter>
nmap <F9> :noh <Enter>
