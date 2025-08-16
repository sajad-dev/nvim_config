dofile("/home/sajad/Documents/Repositories/nvim_config/packer.lua")
dofile("/home/sajad/Documents/Repositories/nvim_config/lsp.lua")
dofile("/home/sajad/Documents/Repositories/nvim_config/nvim-tree.lua")
dofile("/home/sajad/Documents/Repositories/nvim_config/keymap.lua")
dofile("/home/sajad/Documents/Repositories/nvim_config/theme.lua")
dofile("/home/sajad/Documents/Repositories/nvim_config/formatter.lua")
dofile("/home/sajad/Documents/Repositories/nvim_config/help.lua")
dofile("/home/sajad/Documents/Repositories/nvim_config/iron.lua")
dofile("/home/sajad/Documents/Repositories/nvim_config/jupyter.lua")

vim.cmd([[autocmd VimResized * wincmd =]])


vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

vim.opt.number = true

vim.opt.updatetime = 3000

vim.api.nvim_create_autocmd({"CursorHold", "CursorHoldI", "TextChanged", "TextChangedI"}, {
    pattern = "*",
    callback = function()
        if vim.bo.modifiable and vim.fn.expand("%") ~= "" then
            vim.cmd("silent! update") 
        end
    end
})

