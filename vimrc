" Checks if p
let is_previously_installed = 1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle"
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    let is_previously_installed = 0
endif

" Reqired stuff from the docs
set nocompatible
filetype off
" ==========================

set rtp+=~/.vim/bundle/Vundle.vim " Pretty much a require
call vundle#begin()

" Required
Plugin 'VundleVim/Vundle.vim'

" My Plugins
Plugin 'Syntastic'
Plugin 'https://github.com/tpope/vim-fugitive' " For blaming others for bugs :D
Plugin 'scrooloose/nerdtree' " Now we're 'IDEing', pretty much file tree on the left
Plugin 'mattn/emmet-vim' " HTML awesomeness

" NERDTree Configs (Shortcuts, C means ctrl, C-t is ctrl+t)
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Automatically install Vundle if it's not yet installed
" Thank you https://www.twilio.com/blog/5-must-have-vim-plugins-that-will-change-your-workflow
if is_previously_installed == 0
    echo "Installing vundle plugins"
    echo ""
    PluginInstall
endif

call vundle#end()
filetype plugin indent on

" None vundle stuff I learned somewhere else but might as well package it here

" tabs = 4 spaces :D
set tabstop=4
set shiftwidth=4
set expandtab

" Syntax Highlighting
syntax on

" always have line numbers
set nu

" End non vundle stuff
