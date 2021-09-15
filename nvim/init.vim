" Settings "{{{
" ---------------------------------------------------------------------
set encoding=utf-8

set background=dark

set guifont="JetBrainsMonoMedium Nerd Font" 11

" Height of the command bar
set cmdheight=1

" width (in spaces) that a <tab> is displayed as
set tabstop=4

" width (in spaces) used in each step of autoindent (aswell as << and >>)
set shiftwidth=4

" Enable mouse support
set mouse=a

set modelines=4

" Entries showed in command history
set history=20

set completeopt-=preview

set backspace=indent,eol,start

" Disable audible bell
set noerrorbells visualbell t_vb=

set shell=/bin/bash

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

set smarttab

" expand tabs to spaces (use :retab to redo entire file)
set expandtab

" For regular expressions turn magic on
set magic

set modeline

set ttyfast

set gdefault

set number

" Highlight search results
set hls

set cursorline

set nostartofline

" Used when in search mode
set ignorecase
set smartcase

set title

set ruler

set ic

set is

set nobackup

set nowb

set noswapfile

set wildmenu

"Auto indent
set ai

"Smart indent
set si

"Wrap lines
set wrap

set nocompatible              " be iMproved, required

filetype on                  " required

" Enables syntax highlighting
syntax enable

" Hides current mode in gutter
set noshowmode

let base16colorspace=256

"}}}

" File Types "{{{
" ---------------------------------------------------------------------
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.ts setf typescript
" Markdown
au BufNewFile,BufRead *md set filetype=markdown

set suffixesadd=.js,.es.json,.css,.sass,scss,.md,.py

autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

"}}}

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
 if has("unix")
   let s:uname = system("uname -s")
   " Do Mac stuff
 endif

 runtime ./maps.vim
"}}}

" Syntax theme "{{{
" ---------------------------------------------------------------------
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set background=dark
  colorscheme palenight 
endif

"}}}
