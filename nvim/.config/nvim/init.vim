"""VIM PLUG---------------------------------
set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'miyakogi/conoline.vim'
Plug 'yuttie/comfortable-motion.vim'
"Plug 'scrooloose/nerdtree'
"Plug 'majutsushi/tagbar'
Plug 'mgee/lightline-bufferline'
Plug 'itchyny/lightline.vim'
Plug 'danro/rename.vim'
Plug 'luochen1990/rainbow'
"Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'mattn/emmet-vim'
"Plug 'dylanaraps/wal.vim'
"Plug 'VundleVim/Vundle.vim'
"Plug 'tpope/vim-surround'
"Plug 'junegunn/goyo.vim'
"Plug 'vim-latex/vim-latex'
"Plug 'scrooloose/nerdcommenter'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'godlygeek/tabular'
"Plug 'mileszs/ack.vim'
"Plug 'plasticboy/vim-markdown'
call plug#end()

set relativenumber

"theming
"colorscheme wal 
"transparent background wth gruvbox theme
set background=dark
hi Normal ctermbg=none

"buffer navigation
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprevious<CR>

"make shell interactive for aliases
"set shellcmdflag+=i
set shell=/bin/zsh

filetype plugin indent on

imap jj <Esc>
nnoremap <SPACE> <Nop>
let mapleader = "\<Space>" 
"let maplocalleader="\<space>"

syntax on
set hlsearch
set number
set autoindent
set ts=4 sw=4
set showmatch
set incsearch
set ignorecase smartcase
let g:conoline_auto_enable = 1
"set termguicolors
set clipboard=unnamed
"set shell=zsh

"""Plug settings

"lightline
let g:lightline = {'colorscheme': 'seoul256'}
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
set showtabline=2

"disable markdown code folding
let g:vim_markdown_folding_disabled = 1

"open nerdtree when new file
""autocmd StdinReadPre * let s:std_in=1
""autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"nerdtree shortcut
""map <C-w> :NERDTreeToggle<CR>

"rainbow brackets
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

"Conoline

""easymotion bindings
""map <Leader> <Plug>(easymotion-prefix)
