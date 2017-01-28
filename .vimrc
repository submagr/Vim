" ======== Globals ==================
set foldmethod=indent " Default indent
set nocompatible
set guifont=Monospace\ 15
set number 

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

" ======== Setting Tab Size =========
set tabstop=4 " size of a hard tabstop
set shiftwidth=4 " size of an "indent"
set softtabstop=4

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
