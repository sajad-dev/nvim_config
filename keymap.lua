vim.api.nvim_set_keymap('n', 'lp', ':put _<CR>', { noremap = true, silent = true })
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

vim.keymap.set('n', '<Left>', function()
  local col = vim.fn.col('.')
  local line = vim.fn.line('.')
  
  if col == 1 and line > 1 then
    vim.cmd('normal! k$') 
  else
    vim.cmd('normal! h') 
  end
end, { noremap = true, silent = true })
vim.keymap.set('n', '<Right>', function()
  local col = vim.fn.col('.')
  local line = vim.fn.line('.')
  local total_lines = vim.fn.line('$')
  
  if col == vim.fn.col('$') - 1 and line < total_lines then

    vim.cmd('normal! j0')
  else
    vim.cmd('normal! l') 
  end
end, { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-f>', ':lua require("conform").format()<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-b>', ':Commentary<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-b>', ':Commentary<CR>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
local ok, spectre = pcall(require, 'spectre')
if not ok then
  return
end

vim.keymap.set('n', '<leader>Z', function()
  spectre.open()
end, { desc = 'Open Spectre' })

vim.keymap.set('n', '<leader>zw', function()
  spectre.open_visual({ select_word = true })
end, { desc = 'Spectre search word' })

vim.keymap.set('n', '<leader>zf', function()
  spectre.open_file_search()
end, { desc = 'Spectre in current file' })

vim.keymap.set('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", { desc = 'Live Grep' })
vim.keymap.set('n', '<leader>ff', "<cmd>Telescope find_files<cr>", { desc = 'Find Files' })

