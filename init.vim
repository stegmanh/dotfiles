syntax on 

set number  
set showbreak=+++   
set textwidth=100  
set showmatch  
set visualbell
set nowrap 
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

set relativenumber 

" Ensure overwrite copy
set backupcopy=yes

" for NERD Commenter
filetype plugin on

" Other javascript stuff?  filetype plugin indent on

" Lol
:imap jk <Esc>
":imap kj <Esc>

" Auto tab
inoremap {<CR> {<CR>}<Esc>O<BS><Tab>

" Plug
call plug#begin('~/.config/nvim/plugged') 
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'
Plug 'raimondi/delimitmate'
Plug 'airblade/vim-gitgutter'
Plug 'othree/yajs.vim'
Plug 'vim-airline/vim-airline'
Plug 'rust-lang/rust.vim'
Plug 'mxw/vim-jsx'
Plug 'neomake/neomake'
Plug 'tpope/tpope-vim-abolish'
Plug 'leafgarland/typescript-vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'mhartington/nvim-typescript'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" Haskell
Plug 'neovimhaskell/haskell-vim'

" Colorz
Plug 'morhetz/gruvbox'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'sebastianmarkow/deoplete-rust'

" Neomake settings
autocmd! BufWritePost * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']

" Start it up
let g:deoplete#enable_at_startup = 1

" Allow tab autocomplete
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<Tab>"

" Disable the preview window on tab complete
set completeopt-=preview

"" rust deoplete rust
let g:deoplete#sources#rust#racer_binary='/home/holden/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/home/holden/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
let g:deoplete#sources#rust#disable_keymap=1

" Yuck
let g:rust_recommended_style = 0

" JS/Tern deoplete things
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete

"Add extra filetypes
let g:tern#filetypes = ['js', 'jsx', 'javascript.jsx']

" Enable JSX in JS files
let g:jsx_ext_required = 0

" Close tag stuff
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" Dont close everything
let delimitMate_matchpairs = "(:),[:],{:}"

" Fzf options
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-i': 'vsplit' }
 " Fzf ctrl p replacement
nnoremap <silent> <C-p> :FZF -m<cr>

" Haskell options
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

autocmd FileType javascript noremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType json noremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
autocmd FileType jsx noremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call RangeCSSBeautify()<cr>


call plug#end()

" Gruvbox
" This HAS to be after plugged :)
set t_Co=256
let base16colorspace=256
set background=dark
colorscheme gruvbox
