" ======== Globals ==================
set foldmethod=indent " Default indent
set nocompatible

" ======== Key-Mappings ===============
nnoremap <S-j> :tabprevious<CR>
nnoremap <S-k> :tabnext<CR>
nnoremap <S-q> :q!<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-o> :NERDTree<CR>
nnoremap <up> <C-w><up> 
nnoremap <down> <C-w><down> 
nnoremap <left> <C-w><left> 
nnoremap <right> <C-w><right> 
nnoremap q :q<CR>
imap jj <Esc>
noremap <c-s-up> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
noremap <c-s-down> ddp
nnoremap <tab> % " Matching bracket pairs
vnoremap <tab> %

" ======== Setting Tab Size =========
" Always do shiftwidth == softtabstop
set tabstop=4 " Width of tab character
set shiftwidth=4 " This sets the behavior of > command, i.e., shifting right
set softtabstop=4 " This sets the behavior of backsapce command, i.e. shifting left
set expandtab " Causes space to be inserted in place of tab character
set autoindent " Copy the indentation of previous line

" ======== Code visiblity =============
set guifont=Monospace\ 15
set number 
set scrolloff=3  " Keep 3 lines always visible
set relativenumber
set cursorline


" ======== Buffers, Code Editing =========
set undofile " Enables undoing even after you closed a file
set ignorecase " Ignores case for all operations
set smartcase " If u search for lowercase- search will be case insensitive, but if any letter is uppercase, search will be case sensitive

" ============= Vundle ================
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" ========= Plugins ==================
Plugin 'tomasr/molokai'
Plugin 'yggdroot/indentline'
Plugin 'rking/ag.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on


" ========= Color scheme =======================
let g:molokai_original = 1

syntax enable
set background=light
colorscheme solarized

" ======== Settings Variable =================
let mapleader = "/" " This is required for easy motion and nerdcommenter to work
