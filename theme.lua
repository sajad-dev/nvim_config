require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "python", "go", "javascript", "typescript" },  
  highlight = {
    enable = true,                
    additional_vim_regex_highlighting = false,  
  },
}

vim.opt.termguicolors = true 

vim.o.background = "light" -- or "light" for light mode
