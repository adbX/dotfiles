"""VUNDLE---------------------------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'jiangmiao/auto-pairs'
Plugin 'myusuf3/numbers.vim'
Plugin 'miyakogi/conoline.vim'
Plugin 'mileszs/ack.vim'
Plugin 'kovetskiy/sxhkd-vim'
Plugin 'dylanaraps/wal.vim'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'mattn/emmet-vim'
Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'mgee/lightline-bufferline'
Plugin 'itchyny/lightline.vim'
Plugin 'valloric/youcompleteme'
"Plugin 'bling/vim-bufferline'
Plugin 'lervag/vimtex'
Plugin 'danro/rename.vim'
Plugin 'vim-latex/vim-latex'
Plugin 'luochen1990/rainbow'
Plugin 'easymotion/vim-easymotion'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'thinca/vim-quickrun'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
call vundle#end()

set relativenumber

"theming
colorscheme wal 
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
"set termguicolors
"set clipboard=unnamedplus
"set shell=zsh

"""Plugin settings

"lightline
let g:lightline = {'colorscheme': 'wal'}
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
set showtabline=2

"disable markdown code folding
let g:vim_markdown_folding_disabled = 1

"comment julia
autocmd FileType apache setlocal commentstring=#\ %s

"open nerdtree when new file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"nerdtree shortcut
map <C-w> :NERDTreeToggle<CR>

"rainbow brackets
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

"easymotion bindings
map <Leader> <Plug>(easymotion-prefix)

"latex stuff
"autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'zathura'
let g:vimtex_view_method = 'zathura'
let g:tex_flavor = 'pdflatex'
let g:Tex_BibtexFlavor = 'biber'

"octave
autocmd FileType matlab map <F9> : !octave % <CR>

"ag the_silver_searcher
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"split mappings
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
"set splitbelow
"set splitright
""Max out the height of the current split
"ctrl + w _
""Max out the width of the current split
"ctrl + w |
""Normalize all split sizes, which is very handy when resizing terminal
"ctrl + w =
""Swap top/bottom or left/right split
"Ctrl+W R
""Break out current window into a new tabview
"Ctrl+W T
""Close every window in the current tabview but the current one
"Ctrl+W o
