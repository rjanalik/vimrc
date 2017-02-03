if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.vim/dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:

" sensible defaults
call dein#add('tpope/vim-sensible')
" airline status bar
call dein#add('bling/vim-airline')

" plugin on GitHub repo
call dein#add('tpope/vim-fugitive')
" git gutter
call dein#add('airblade/vim-gitgutter')

" Smart fuzzy completion
call dein#add('Valloric/YouCompleteMe', {
      \ 'build': './install.py --clang-completer',
      \ 'timeout': 300,
   \ })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
   call dein#install()
endif


set number
set expandtab
set tabstop=3
set shiftwidth=3
set autoindent
set ignorecase
set incsearch
set hlsearch
set hidden
syntax on
set backspace=2
set fileencodings=utf-8,latin2
set laststatus=2
set updatetime=250
set mouse=a
