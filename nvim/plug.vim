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
    " Plug 'EdenEast/nightfox.nvim'
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'larsbs/vimterial_dark'

    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    Plug 'windwp/nvim-autopairs'
    " Auto close parentheses
    Plug 'cohama/lexima.vim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'folke/trouble.nvim'

    " Markdown Preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install'  }

    " Comment Enhancer
    Plug 'preservim/nerdcommenter'

    " Formatting a File
    Plug 'sbdchd/neoformat'

    " Dashboard
    Plug 'glepnir/dashboard-nvim'

    " Auto Import popover
    Plug 'RishabhRD/popfix'
    Plug 'RishabhRD/nvim-lsputils'

    " Autocomplete
    Plug 'nvim-lua/completion-nvim'
    " Complete Signature
    Plug 'ray-x/lsp_signature.nvim'
    
    " LSP Completion
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-treesitter/completion-treesitter'
    Plug 'aca/completion-tabnine', { 'do': './install.sh' }

    " Making a personal Wiki
    Plug 'vimwiki/vimwiki'
endif

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" File Explorer with Icons
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'


call plug#end()
