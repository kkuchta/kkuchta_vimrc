filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin on
"Turn on line numbering. Turn it off with "set nonu"
set nu 

"Set syntax on
syntax on

"Indent automatically depending on filetype
filetype indent on
set autoindent

"Case insensitive search
set ic

"Higlhight search
set hls

"Wrap text instead of being on one line
set lbr

set wildmode=list:longest

"Set up misc general settings
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

"Turn off arrow navigation
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>


"nnoremap j gj
"nnoremap k gk

"Semicolon same as colon
nnoremap ; :
vnoremap ; :

"Autosave all buffers when losing window focus
au FocusLost * :wa

"Mash j and k to escape.
inoremap jk <ESC>
inoremap kj <ESC>

let mapleader = ","

"set autochdir

"Tab settings.  TODO: make this more intelligent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"Show invisible characters
set list
set listchars=tab:▸\ ,eol:¬

"Toggle showing invisible characters with ,l
nnoremap ,l :set list!<CR>

autocmd User Rails let  g:fuzzy_roots = [RailsRoot()]

"Set line width to 80, with older version backup support.
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

"Set swap and backup files to the tmp location.
if has("win32") || has("win64")
   set directory=$TMP
   set backupdir=$TMP
else
   set directory=/tmp
   set backupdir=/tmp
end

"Cycle through buffers with ctrl-j and ctrl-k
map <C-j> :bprev<CR>
map <C-k> :bnext<CR>

",fj autoformats json
nnoremap <Leader>fj :%!python -m json.tool<Enter>

"Set up command t
noremap <leader>o <Esc>:CommandT<CR>
noremap <leader>O <Esc>:CommandTFlush<CR>
noremap <leader>b <Esc>:CommandTBuffer<CR>

"Escape to cancel tab completion
inoremap <expr> <Esc>      pumvisible() ? "\<C-e>": "\<Esc>"
nnoremap <leader>d :NERDTreeToggle<cr>

"Escape to turn of highlighting.
nnoremap <silent> <esc> :noh<return><esc>

"shift-h and shift-l to beginning and end of line.
map H ^
map L $

"Set vim to use system clipboard for the default register
set clipboard=unnamed

"Map r to 'delete to black hole register'
"nnoremap r "_d
"vnoremap r "_d
"nnoremap rr "_dd

"Edit vimrc with leader-ev, and auto reload all buffers on vimrc write
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
au! BufWritePost .vimrc source %

nnoremap <leader>zh <ESC>:let g:zenburn_high_Contrast=1<CR>:colors zenburn<CR>
nnoremap <leader>zl <ESC>:let g:zenburn_high_Contrast=0<CR>:colors zenburn<CR>

let g:zenburn_high_Contrast=1

"Map option-j and option-k to 10-up and 10-down.
nnoremap ˚ 10k
vnoremap ˚ 10k
nnoremap ∆ 10j
vnoremap ∆ 10j

" Toggle relative line numbers.
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>
