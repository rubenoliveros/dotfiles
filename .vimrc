syntax on

set clipboard=unnamed
set cursorline
set incsearch
set laststatus=2
set mouse=a
set nobackup
set noerrorbells
set noswapfile
set nowrap
set nu
set relativenumber
set showcmd
set showmatch
set smartcase
set smartindent
set tabstop=8 shiftwidth=8
set title
set undodir=~/.vim/undodir
set undofile

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd VimEnter * below terminal
autocmd VimEnter * resize 10
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'zxqfl/tabnine-vim'
Plug 'sjl/gundo.vim'
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'

call plug#end()

colorscheme gruvbox
set background=dark

let mapleader=" "

nmap <Leader>nt :NERDTreeFind<CR>
nnoremap <F5> :GundoToggle<CR>

