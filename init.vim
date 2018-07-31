call plug#begin('~/.config/nvim/plugged')

" General purpose.

Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'

" Language specific.

Plug 'fatih/vim-go'

call plug#end()

" ----- neovim defaults

" Leader key.
let mapleader = ','

syntax on
filetype plugin indent on
set nocompatible

" Exit back to normal mode in terminal with escape.
tnoremap <Esc> <C-\><C-n>

" Open terminal in right window with <leader>m.
nnoremap <Leader>m :vsp term:///bin/bash<CR>:startinsert<CR>

" Line numbers.
set number
set ruler

" So I know which mode I'm in.
set showmode

" Stop beeping!
set noerrorbells

" By default, use two spaces.
set smarttab
set smartindent
set autoindent
set softtabstop=2
set shiftwidth=2
set expandtab

" Clearer cursor.
set cursorline

" Highlight while searching and clear search with <C-L>.
set hlsearch
nnoremap <C-L> :nohl<CR><C-L>

" Reasonable searching.
set ignorecase
set smartcase
set incsearch

set tw=90

set history=1000

set cmdheight=1

set completeopt=menuone,menu,longest
set wildmenu
set completeopt+=longest

" Flash open paren upon typing close.
set showmatch

" Keep 5 lines of context when scrolling.
set scrolloff=5

" Solarized.
set background=dark
colorscheme solarized
set t_Co=256

" Natural splitting.
set splitbelow
set splitright

tnoremap <Esc> <C-\><C-n>

" ----- syntastic

map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" ----- nerd tree

map <Leader>n :NERDTreeToggle<CR>

" ----- fzf

nnoremap <Leader>o :FZF<CR>

" ----- go

let g:go_fmt_command = "goimports"

let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

let g:syntastic_go_checkers = ['govet', 'errcheck', 'go', 'golint']
