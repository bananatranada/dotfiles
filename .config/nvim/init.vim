"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/bryankang/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/bryankang/.vim/bundles')
  call dein#begin('/Users/bryankang/.vim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/bryankang/.vim/bundles/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('mhartington/oceanic-next')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

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

" oceanic-next
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme OceanicNext

filetype plugin indent on
syntax enable
filetype plugin indent on
syntax enable
syntax on
set number
set autoindent
set smartindent
set lazyredraw
set visualbell
set backspace=indent,eol,start
set timeoutlen=500
set hlsearch
set hidden
set ignorecase smartcase
set tabstop=2
set shiftwidth=2
set expandtab smarttab
set encoding=utf-8
set colorcolumn=80

vnoremap > >gv
vnoremap < <gv
