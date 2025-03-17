local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require'luasnip'.lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
    { name = 'luasnip' }, 
  }
})

require'nvim-web-devicons'.setup {
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
 },
 color_icons = true,
 default = true,
 strict = true,
 variant = "light|dark",
 override_by_filename = {
  [".gitignore"] = {
    icon = "",
    color = "#f1502f",
    name = "Gitignore"
  }
 },
 override_by_extension = {
  ["log"] = {
    icon = "",
    color = "#81e043",
    name = "Log"
  }
 },
 override_by_operating_system = {
  ["apple"] = {
    icon = "",
    color = "#A2AAAD",
    cterm_color = "248",
    name = "Apple",
  },
 },
}

require("nvim-tree").setup {
  view = {
    width = 30,
    side = "left",
    number = false,
    relativenumber = false,
  },
  renderer = {
    highlight_opened_files = "name",
    icons = {
      show = {
        file = true,     
        folder = true,    
        git = true,       
      },
      glyphs = {
        default = '',   
        symlink = '',  
        git = {
          unstaged = '✗', 
          staged = '✓',   
          untracked = '★', 
        },
      }
    }
  }
}

