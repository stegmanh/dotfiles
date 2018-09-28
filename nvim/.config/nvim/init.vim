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

" Lol
:imap jk <Esc>

" Auto tab
inoremap {<CR> {<CR>}<Esc>O<BS><Tab>

" Plug
call plug#begin('~/.config/nvim/plugged') 
" -- Code editing --
" Easy file commenting
Plug 'scrooloose/nerdcommenter'
" Code tree
Plug 'scrooloose/nerdtree'
" Surrounding for parens, quotes etc
Plug 'tpope/vim-surround'
" Auto close braces
Plug 'raimondi/delimitmate'
" Smart find/replace (%S) 
Plug 'tpope/tpope-vim-abolish'
" Auto close html tags
Plug 'alvan/vim-closetag'
" Emmet
Plug 'mattn/emmet-vim'
" Fzf
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" -- Editor appearance --
" Git
Plug 'airblade/vim-gitgutter'
" Bottom bar
Plug 'vim-airline/vim-airline'

" -- Languages --
Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go'
Plug 'maksimr/vim-jsbeautify'

" -- Auto complete --
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'w0rp/ale'

" Colors
Plug 'morhetz/gruvbox'
Plug 'nightsense/snow'

" Auto complete plugins
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'sebastianmarkow/deoplete-rust'

" Start it up
let g:deoplete#enable_at_startup = 1

" Allow tab autocomplete
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<Tab>"

" Disable the preview window on tab complete
set completeopt-=preview

"" rust deoplete rust
let g:deoplete#sources#rust#racer_binary='$HOME/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='$HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
let g:deoplete#sources#rust#disable_keymap=1

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

" Use Rg instead of Ag
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Go settings
let g:deoplete#sources#go#gocode_binary = '$GOPATH/bin/gocode'
let g:go_fmt_command = "goimports"

augroup go
  autocmd!

  autocmd FileType go nmap <Leader>v <Plug>(go-def-vertical)
  autocmd FileType go nmap <Leader>s <Plug>(go-def-split)
  autocmd FileType go nmap <Leader>t <Plug>(go-def-tab)
augroup END

let g:ale_fixers = {
  \  'javascript': ['eslint'],
  \}

let g:ale_linters = { 
  \ 'javascript': ['eslint']
  \}

autocmd FileType javascript noremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType json noremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
autocmd FileType jsx noremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

call plug#end()

" Gruvbox
" This _has_ to be after plugged
set t_Co=256
let base16colorspace=256
set background=dark
colorscheme gruvbox
