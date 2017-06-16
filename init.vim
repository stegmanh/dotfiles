set number  
set showbreak=+++   
set textwidth=100  
set showmatch  
set visualbell
set nowrap

syntax on

set hlsearch 
set smartcase
set ignorecase
set incsearch
 
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
" Tabs appear as 2 spaces
set tabstop=2
 
set ruler
 
set undolevels=1000
set backspace=indent,eol,start

" for NERD Commenter
filetype plugin on

" Other javascript stuff?
filetype plugin indent on

" Lol
:imap jk <Esc>
:imap kj <Esc>

" Plug
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'
Plug 'raimondi/delimitmate'
Plug 'airblade/vim-gitgutter'
Plug 'othree/yajs.vim'
Plug 'vim-airline/vim-airline'
Plug 'rust-lang/rust.vim'

" Colorz
Plug 'morhetz/gruvbox'
Plug 'dikiaap/minimalist'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'sebastianmarkow/deoplete-rust'

" Start it up
let g:deoplete#enable_at_startup = 1

" rust deoplete rust
let g:deoplete#sources#rust#racer_binary='~/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='~/code/rust/rust/src'
let g:deoplete#sources#rust#disable_keymap=1

call plug#end()

" Gruvbox
" This HAS to be after plugged :)
set t_Co=256
"set background=dark
colorscheme minimalist
