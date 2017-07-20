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

if v:version > 703
   " Smart fuzzy completion
   call dein#add('Valloric/YouCompleteMe', {
         \ 'build': './install.py --clang-completer',
         \ 'timeout': 300,
      \ })
endif

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
nnoremap <Space> :nohlsearch<CR>

" Tell vim to remember certain things when we exit
" '10  :  marks will be remembered for up to 10 previously edited files
" "100 :  will save up to 100 lines for each register
" :20  :  up to 20 lines of command-line history will be remembered
set viminfo='10,\"100,:20,%,n~/.viminfo

" now restore position based on info saved in viminfo
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

" hilight current line by making the row number on the lhs stand out
set cursorline
hi CursorLine ctermbg=NONE cterm=NONE term=NONE
hi CursorLineNr ctermfg=117 ctermbg=236  term=bold cterm=bold
