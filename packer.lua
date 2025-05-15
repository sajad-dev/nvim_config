require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use { "ellisonleao/gruvbox.nvim" }
  use {
    'EdenEast/nightfox.nvim', -- nightfox plugin
     
  }
use {
  requires = {
    'nvim-lua/plenary.nvim',
    'neovim/nvim-lspconfig',
  }
}  

  -- File Explorer
  use {
    "nvim-tree/nvim-tree.lua",
    requires = { "nvim-tree/nvim-web-devicons" } 
  }

  -- Auto Pairs
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

  -- LSP
  use 'neovim/nvim-lspconfig'
  use {
    'pmizio/typescript-tools.nvim', -- جایگزین tsserver
    requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" }
  }
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  }

  -- Colorscheme
  use 'morhetz/gruvbox'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
use {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use {
  'nvim-pack/nvim-spectre',
  requires = { 'nvim-lua/plenary.nvim' },
}
  -- Formatting
  use {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          python = { "black" },
          javascript = { { "prettierd", "prettier" } },
          typescript = { { "prettierd", "prettier" } },
          c = { "clang-format" },
          cpp = { "clang-format" },
        },
      })
    end
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
end)
