if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  Plug 'hoob3rt/lualine.nvim'

  " Dark Filer Manager - Git (Maybe include later)
  "   Plug 'kristijanhusak/defx-git'
  "   Plug 'kristijanhusak/defx-icons'
  "   Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'
  Plug 'nvim-lua/completion-nvim'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'windwp/nvim-autopairs'

  " Markdown Preview
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install'  }
endif

Plug 'groenewege/vim-less', { 'for': 'less' }
" File Explorer with Icons
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
 " Theme
Plug 'arcticicestudio/nord-vim'
Plug 'chriskempson/base16-vim'


call plug#end()
