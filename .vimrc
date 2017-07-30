" 行番号
set number

" tabをスペース2個にする
set expandtab
set tabstop=2
set shiftwidth=2

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/rinkei/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/rinkei/.cache/dein')
  call dein#begin('/Users/rinkei/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/rinkei/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/vimproc')
  call dein#add('Shougo/vimshell')
  call dein#add('thinca/vim-ref')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" ref.vim
let g:ref_open = 'vsplit'
let g:ref_refe_cmd = "rurema"
