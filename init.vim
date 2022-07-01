" Keybindings
imap jj <Esc>
map <C-p> :FZF<CR>

" Configuration
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set autoindent              " indent a new line the same amount as the line just typed
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   " allows auto-indenting depending on file type
set tabstop=4               " number of columns occupied by a tab character
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
let g:coq_settings = { 'auto_start': v:true }

" Leader key
let mapleader = " " " map leader to Space

" Custom Keybindings
map <leader>f :Files<CR>
map <leader>l :set number<CR>
map <leader>r :Rg<CR>
map <leader>t :term<CR>
map <leader><enter> :w<CR>
map <leader>j :NERDTree<CR>
map <leader>n :NERDTreeCWD<CR>
map <leader>b :Buffers<CR>
map <leader>J :Sexplore<CR>
map <leader>w :Windows<CR>

" Plugins
call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'EdenEast/nightfox.nvim' " Vim-Plug
Plug 'honza/vim-snippets'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
" 9000+ Snippets
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
" lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
" Need to **configure separately**
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
" - shell repl
" - nvim lua api
" - scientific calculator
" - comment banner
" - etc
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'kyoh86/vim-ripgrep'
Plug 'nelsyeung/twig.vim'
"Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'altercation/vim-colors-solarized'
Plug 'ryanoasis/vim-devicons'
Plug 'fatih/vim-go'
Plug 'wuelnerdotexe/vim-enfocado'
call plug#end()

colorscheme duskfox
