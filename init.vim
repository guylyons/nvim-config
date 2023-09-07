set encoding=utf-8

" Lua Plugins
lua require('plugins')

" Keybindings
imap jj <Esc>
map <C-p> :FZF<CR>

" Configuration
set relativenumber
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set autoindent              " indent a new line the same amount as the line just typed
set wildmode=longest,list   " get bash-like tab completions
set tabstop=4               " number of columns occupied by a tab character
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
filetype plugin indent on   " allows auto-indenting depending on file type

" Leader key
let mapleader = " " " map leader to Space

" Custom Keybindings
map <leader>f :Telescope find_files<CR>
map <leader>r :Rg<CR>
map <leader>h :History<CR>
map <leader>g :Git<CR>
map <leader>t :term<CR>
map <leader><enter> :w<CR>
map <leader>j :NERDTreeToggle<CR>
map <leader>b :Buffers<CR>
map <leader>J :Sexplore<CR>
map <leader>w :Windows<CR>

" Plugins
call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'EdenEast/nightfox.nvim' " Vim-Plug
Plug 'honza/vim-snippets'
" lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'kyoh86/vim-ripgrep'
Plug 'nelsyeung/twig.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
" A close enough solution to what occur
" provided in Emacs
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'altercation/vim-colors-solarized'
Plug 'ryanoasis/vim-devicons'
Plug 'fatih/vim-go'
Plug 'wuelnerdotexe/vim-enfocado'
Plug 'neovim/nvim-lspconfig'
Plug 'justinmk/vim-sneak'
Plug 'mfussenegger/nvim-dap'

Plug 'joonty/vdebug'

Plug 'echasnovski/mini.nvim', { 'branch': 'stable' }
Plug 'williamboman/mason.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }

" Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
call plug#end()

" Set default theme
colorscheme duskfox
