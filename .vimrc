"set termguicolors
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'winresizer.vim'

call vundle#end()            " required
filetype plugin indent on    " required

let g:NERDTreeNodeDelimiter = "\u00a0"
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" solarized options
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors=256

map <C-n> :NERDTreeToggle<CR>
map <C-f> :Ack!<Space>
map <C-t> :TagbarToggle<CR>

syntax enable
set background=light
colorscheme solarized

:set nu
set guifont=Menlo\ Regular:h18
