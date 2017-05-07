set nocompatible

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'mhartington/oceanic-next'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-syntastic/syntastic'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'
Plug 'brooth/far.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Raimondi/delimitMate'
Plug 'christoomey/vim-tmux-navigator'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

call plug#end()

syntax on
set background=dark
"set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme OceanicNext

" Allows for opauqe background to come through
hi Normal ctermbg=none

filetype plugin on
hi clear SignColumn

" --- Plugin settings ---
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

let g:jsx_ext_required = 0

" --- deocomplete tab mapping ---
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

let g:deoplete#enable_at_startup = 1

let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END 

set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1


let delimitMate_expand_cr = 1
 augroup mydelimitMate
   au!
   au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
   au FileType tex let b:delimitMate_quotes = ""
   au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
   au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
 augroup END<Paste>


let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 

" --- Plugin rebinds ---
nmap <silent> <C-n> :NERDTreeToggle<CR>
vmap <silent> <C-_> <leader>c<Space>

nmap <silent> <leader>b :TagbarToggle<CR>

" --- General settings ---
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set mouse=a
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set clipboard+=unnamedplus

