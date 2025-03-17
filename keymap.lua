
vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
function ToggleTerminal()
    for _, win in ipairs(vim.api.nvim_list_wins()) do
        local buf = vim.api.nvim_win_get_buf(win)
        if vim.bo[buf].buftype == "terminal" then
            vim.api.nvim_win_close(win, true)
            return
        end
    end
    vim.cmd("belowright split | terminal")
end

vim.keymap.set("n", "<C-j>", ToggleTerminal, { noremap = true, silent = true })

