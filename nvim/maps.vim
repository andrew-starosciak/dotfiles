" Description: Keymaps

" ------- Common 
"  Jumping Back Location - Ctrl + o 
"  Jumping Forward Location - Ctrl + i
"
" -------

" Delete without yank
nnoremap <leader>d "_d

" Delete a word backwards
nnoremap dw vb"_d

" Select all
nmap <C-a> gg<S-v>G

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

" Open Nerd Tree
nmap <leader>f :NERDTree<CR>
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

" Tabs
map <leader>tn :tabnew<CR>
map <leader>to :tabonly<CR>
map <leader>tc :tabclose<CR>
map <leader>tm :tabmove<CR>
map <leader>n :tabn<CR>
map <leader>p :tabp<CR>

nnoremap <silent> ca <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.implementation()<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*
