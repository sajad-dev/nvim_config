dofile("/home/sajad/Documents/Programming/nvim_config/autocomplete.lua")
dofile("/home/sajad/Documents/Programming/nvim_config/packer.lua")
dofile("/home/sajad/Documents/Programming/nvim_config/nvim-tree.lua")
dofile("/home/sajad/Documents/Programming/nvim_config/keymap.lua")
dofile("/home/sajad/Documents/Programming/nvim_config/theme.lua")
dofile("/home/sajad/Documents/Programming/nvim_config/formatter.lua")
dofile("/home/sajad/Documents/Programming/nvim_config/help.lua")
dofile("/home/sajad/Documents/Programming/nvim_config/iron.lua")
dofile("/home/sajad/Documents/Programming/nvim_config/jupyter.lua")

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
