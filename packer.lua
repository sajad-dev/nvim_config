require('packer').startup(function(use)
  -- Packer (plugin manager)
  use 'wbthomason/packer.nvim'

  -- Snippet engine
  use {
    "L3MON4D3/LuaSnip",
    tag = "v2.*",
    run = "make install_jsregexp"
  }

  -- Mason (LSP/DAP/formatting manager)
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "jay-babu/mason-null-ls.nvim",
  }

  -- LSP Config
  use 'neovim/nvim-lspconfig'

  -- Typescript tools (depends on plenary and lspconfig)
  use {
    'pmizio/typescript-tools.nvim',
    requires = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  }

  -- Completion framework and sources
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

  -- Treesitter (syntax highlighting and more)
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  -- Null-ls for formatting/linting
  use {
    "nvimtools/none-ls.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  }

  -- File explorer and icons
  use {
    "nvim-tree/nvim-tree.lua",
    requires = { "nvim-tree/nvim-web-devicons" }
  }

  -- Autopairs (auto close brackets, quotes, etc)
  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }

  -- UI and notifications
  use "rcarriga/nvim-notify"
  use "stevearc/dressing.nvim"
  use {
    "kiyoon/jupynium.nvim",
    run = "pip3 install --user jupytext nbconvert",
    requires = {
      "rcarriga/nvim-notify",
      "stevearc/dressing.nvim",
    },
    config = function()
      require("jupynium").setup({})
    end,
  }

  -- Color schemes
  use { "ellisonleao/gruvbox.nvim" }
  use { 'EdenEast/nightfox.nvim' }

  -- REPL integration
  use {'Vigemus/iron.nvim'}

  -- Misc vim plugins
  use 'tpope/vim-commentary'
  use 'tpope/vim-sensible'
  use 'vim-airline/vim-airline'
  use 'tpope/vim-fugitive'

  -- Telescope (fuzzy finder)
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Search and replace UI
  use {
    'nvim-pack/nvim-spectre',
    requires = { 'nvim-lua/plenary.nvim' },
  }

  -- Code formatting
  use {
    "stevearc/conform.nvim",
  }

  -- Utility library
  use 'nvim-lua/plenary.nvim'
end)

