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

set shell=/bin/zsh

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

filetype off                  " required

" Enables syntax highlighting
syntax enable

" Hides current mode in gutter
set noshowmode

let base16colorspace=256

" Reminders of mappings
" NERDTree  s (opens in split) t (opens in tab)
" PgUp & PgDn goes through tabs.
" Searching with <C-p> pressing <C-t> (opens in tab) <C-s> (opens in split)

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

nmap Q <Nop>

" Used to prevent use of arrow keys
" In normal mode
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" Remaps keys used to switch between panes to ctrl-movementkeys
nnoremap <C-J> <C-w><C-j>
nnoremap <C-K> <C-w><C-k>
nnoremap <C-L> <C-w><C-l>
nnoremap <C-H> <C-w><C-h>

nmap <F8> :TagbarToggle<CR>
nmap <leader>f :NERDTree<CR>

map <leader>tn :tabnew<CR>
map <leader>to :tabonly<CR>
map <leader>tc :tabclose<CR>
map <leader>tm :tabmove<CR>
map <leader>n :tabn<CR>
map <leader>p :tabp<CR>

" Sync active file with NerdTree
map <leader>r :NERDTreeFind<cr>

" Unhighlight highlighted search results
map <silent> <leader><cr> :noh<cr>

" Opens a new tab with the current buffer's path
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

" Fast saving
nmap <leader>w :w!<cr>

" Copy/Paste to clipboard
vnoremap <C-c> :w !xclip -i -sel c<CR><CR>

noremap <C-p> :r !xsel -o -b<CR><CR>

" Fuzzy Search
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
" requires silversearcher-ag
" used to ignore gitignore files
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" open new split panes to right and below
set splitright
set splitbelow

" key mappings example
nmap <silent> gd :vsp<CR><Plug>(coc-definition)
nmap <silent> gD <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" there's way more, see `:help coc-key-mappings@en'

" oen terminal on ctrl+;
" uses zsh instead of bash
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>p

"

call plug#begin("~/.vim/plugged")
  " Theme
  Plug 'arcticicestudio/nord-vim'
  Plug 'chriskempson/base16-vim'

  " Language Client
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-angular']
  Plug 'puremourning/vimspector'
  
  " TypeScript Highlighting
  Plug 'leafgarland/typescript-vim'

  " LightLine
  Plug 'itchyny/vim-gitbranch'
  Plug 'itchyny/lightline.vim'
  Plug 'josa42/vim-lightline-coc'

  " File Explorer with Icons
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'

  " Right Side Tag Bar
  Plug 'preservim/tagbar'

  " File Search
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

  " Markdown Preview
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install'  }
call plug#end()

" Lightline Settings
set laststatus=2
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'gitbranch'] ],
      \   'right': [
      \              ['lineinfo'],
      \              ['percent'],
      \              [ 'fileformat', 'fileencoding', 'filetype'],
      \              [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ] ]
      \ },
      \ 'component_function': {
      \ 'gitbranch': 'gitbranch#name',
      \ 'linter_checking': 'lightline#coc#checking',
      \ 'linter_infos': 'lightline#coc#infos',
      \ 'linter_warnings': 'lightline#coc#warnings',
      \ 'linter_errors': 'lightline#coc#errors',
      \ 'linter_ok': 'lightline#coc#ok'
      \ },
      \ }
"

" Enable theming support
if (has("termguicolors"))
 set termguicolors
endif

filetype plugin indent on    " required

" Theme
syntax enable
colorscheme base16-nord
