require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "python", "go", "javascript", "typescript" },  
  highlight = {
    enable = true,                
    additional_vim_regex_highlighting = false,  
  },
}
local transparent_enabled = true

require("nightfox").setup({
  options = {
    transparent = true,  -- 👈 فعال کردن شفافیت
  }
})

vim.cmd("colorscheme nightfox")

local function toggle_transparency()
  transparent_enabled = not transparent_enabled

  require("nightfox").setup({
    options = {
      transparent = transparent_enabled,
    },
  })

  vim.cmd("colorscheme nightfox")


end

vim.keymap.set("n", "<F5>", toggle_transparency, { noremap = true, silent = true })

