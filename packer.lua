require('packer').startup(function(use)
  -- Packer خودکار
  use 'wbthomason/packer.nvim'

  -- Colorschemes
  use { "ellisonleao/gruvbox.nvim" }
  use 'morhetz/gruvbox'
  use { 'EdenEast/nightfox.nvim' }

  -- LSP و Dependency ها

  use 'neovim/nvim-lspconfig'

  -- Typescript Tools (جایگزین tsserver)
  use {
    'pmizio/typescript-tools.nvim',
    requires = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  }

  -- Treesitter (برای syntax highlight بهتر مخصوصا JSX/TSX)
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  -- File Explorer
  use {
    "nvim-tree/nvim-tree.lua",
    requires = { "nvim-tree/nvim-web-devicons" }
  }

  -- Autopairs
  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }

  -- Essentials
  use 'tpope/vim-commentary'
  use 'tpope/vim-sensible'
  use 'vim-airline/vim-airline'
  use 'tpope/vim-fugitive'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Search & Replace better
  use {
    'nvim-pack/nvim-spectre',
    requires = { 'nvim-lua/plenary.nvim' },
  }

  -- Formatting (Prettier, Black, Stylua و ...)
  use {
    "stevearc/conform.nvim",
  }

  -- Autocompletion
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'onsails/lspkind.nvim'
    }
  }

  -- Plenary و LSPConfig را به صورت مستقل هم داشته باش
  use 'nvim-lua/plenary.nvim'
  use 'neovim/nvim-lspconfig'
end)

