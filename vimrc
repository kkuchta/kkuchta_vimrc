filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin on
" Turn on line numbering. Turn it off with "set nonu" 
set nu 

" Set syntax on
syntax on

" Indent automatically depending on filetype
filetype indent on
set autoindent

" Case insensitive search
set ic

" Higlhight search
set hls

" Wrap text instead of being on one line
set lbr

set wildmode=list:longest

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :

au FocusLost * :wa
inoremap jj <ESC>

let mapleader = ","

"set autochdir
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set list
set listchars=tab:▸\ ,eol:¬

map <Leader>t :FuzzyFinderTextMate<Enter>
autocmd User Rails let  g:fuzzy_roots = [RailsRoot()]
