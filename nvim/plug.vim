if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

if has("nvim")
    " Line
    Plug 'hoob3rt/lualine.nvim'

    " LSP Installer
    Plug 'neovim/nvim-lspconfig'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'folke/lsp-colors.nvim'
    Plug 'kabouzeid/nvim-lspinstall'

    " NVIM Theme
    Plug 'EdenEast/nightfox.nvim'

    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    Plug 'windwp/nvim-autopairs'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'folke/trouble.nvim'

    " Markdown Preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install'  }

    " Dashboard
    Plug 'glepnir/dashboard-nvim'

    " Autocomplete
    Plug 'nvim-lua/completion-nvim'
    " Complete Signature
    Plug 'ray-x/lsp_signature.nvim'
endif

" File Explorer with Icons
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'


call plug#end()
