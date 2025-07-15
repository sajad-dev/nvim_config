require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

-- use {
--   "lukas-reineke/blink.nvim",
--   config = function()
--     require("blink").setup()
--   end,
-- }


  use {
    "kiyoon/jupynium.nvim",
    run = "pip3 install --user jupytext nbconvert",
    requires = {
      "rcarriga/nvim-notify",
      "stevearc/dressing.nvim",
    },
    --ft = { "python", "ipynb" ,"json"},
    config = function()
      require("jupynium").setup({})
    end,
  }

  use "rcarriga/nvim-notify"
  use "stevearc/dressing.nvim"

  use { "ellisonleao/gruvbox.nvim" }
  use 'morhetz/gruvbox'
  use { 'EdenEast/nightfox.nvim' }

  use {'Vigemus/iron.nvim'}

  use 'neovim/nvim-lspconfig'

  use {
    'pmizio/typescript-tools.nvim',
    requires = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  use {
    "nvim-tree/nvim-tree.lua",
    requires = { "nvim-tree/nvim-web-devicons" }
  }

  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }

  use 'tpope/vim-commentary'
  use 'tpope/vim-sensible'
  use 'vim-airline/vim-airline'
  use 'tpope/vim-fugitive'

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-pack/nvim-spectre',
    requires = { 'nvim-lua/plenary.nvim' },
  }

  use {
    "stevearc/conform.nvim",
  }

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

  use 'nvim-lua/plenary.nvim'
end)

