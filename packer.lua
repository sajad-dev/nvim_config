require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  
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
  use 'tpope/vim-sensible'
  use 'vim-airline/vim-airline'
  use 'neovim/nvim-lspconfig'
  use 'morhetz/gruvbox'  
  use 'nvim-treesitter/nvim-treesitter'
  use "stevearc/conform.nvim"
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip'
    }
  }
  
  use 'tpope/vim-fugitive'
end)

