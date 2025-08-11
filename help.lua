vim.api.nvim_create_user_command('CheatSheetSearch', function()
  print([[
SEARCH SHORTCUTS:
<leader>Z     - Open Spectre
<leader>zw    - Search word under cursor
<leader>zf    - Search in current file
<leader>fg    - Search word in projects
<leader>ff    - Find file in projects
  ]])
end, {})

vim.api.nvim_create_user_command('CheatSheetKwin', function()
  print([[
KWIN WINDOWS SHORTCUTS:
Meta+CR             - Minimize all windows
Meta + (left/right/top/down) - Move window
Alt+up              - Maximize window
Alt+down            - Minimize window
Alt+M               - Resize window
  ]])
end, {})

vim.api.nvim_create_user_command('CheatSheetNvimTree', function()
  print([[
NVIM TREE:
Ctrl+v    - Split Vertical
Ctrl+x    - Split Horizontal
  ]])
end, {})

vim.api.nvim_create_user_command('CheatSheetHighlight', function()
  print([[
REMOVE HIGHLIGHT:
:noh   - Remove search highlight
  ]])
end, {})

vim.api.nvim_create_user_command('CheatSheetInsertMode', function()
  print([[
INSERT MODE SHORTCUTS:

Clipboard Paste:
  Ctrl-r+"       - Paste
  Ctrl-r+(0-9)   - Paste from default registers
  Ctrl-r+(a-z)   - Paste from custom registers
  Ctrl-r++       - Paste from system clipboard
  <leader>y      - Copy to system clipboard

Text Deletion:
  Ctrl+U         - Delete from cursor to beginning of the line
  Ctrl+W         - Delete one word before the cursor
  Ctrl+K         - Delete from cursor to end of the line
  Ctrl+H         - Delete one character before the cursor (Backspace)

Cursor Movement / Temporary Normal Mode:
  Ctrl+O         - Execute one Normal mode command, then return to Insert mode
  Ctrl+T         - Increase indentation by one shiftwidth
  Ctrl+D         - Decrease indentation by one shiftwidth

Insert from Adjacent Lines:
  Ctrl+Y         - Insert the character from the same column in the line above
  Ctrl+E         - Insert the character from the same column in the line below

Undo / Redo Control:
  Ctrl+G u       - Start a new undo sequence (break undo)
  Ctrl+R         - Insert content from a register (not redo in Insert mode)

Miscellaneous:
  Ctrl+V         - Insert a literal character (next typed character inserted as is)
  Ctrl+A         - Insert last inserted text again
  Ctrl+@         - Same as Ctrl+A (insert last inserted text)

  Ctrl-o         - Execute one normal mode command (like u, x, etc.)
  ]])
end, {})

vim.api.nvim_create_user_command('CheatSheetInstallTools', function()
  print([[
INSTALL TOOLS:
pip install jupynium jupytext notebook selenium
  ]])
end, {})

-- vim.api.nvim_create_user_command('CheatSheetJupyniumServer', function()
--   print([[
-- JUPYNIUM SERVER COMMANDS:
-- <leader>kp  - KillPort
-- <leader>kj  - JupyterInstallTools
-- <leader>kq  - JupyterNotebook
-- <leader>js  - Start and attach to server
-- <leader>jt  - Start and attach to server in terminal (debug)
-- <leader>ja  - Attach to existing server
--   ]])
-- end, {})

-- vim.api.nvim_create_user_command('CheatSheetJupyniumSync', function()
--   print([[
-- JUPYNIUM SYNC COMMANDS:
-- <leader>jS  - Start sync (by filename or tab index)
-- <leader>jX  - Stop sync
-- <leader>jl  - Load from .ipynb tab
-- <leader>jL  - Load from .ipynb tab and start sync
--   ]])
-- end, {})

-- vim.api.nvim_create_user_command('CheatSheetJupyniumNotebook', function()
--   print([[
-- JUPYNIUM NOTEBOOK COMMANDS:
-- <leader>jw  - Save .ipynb file
-- <leader>jd  - Download .ipynb file
-- <leader>jD  - Toggle auto download .ipynb
--   ]])
-- end, {})

-- vim.api.nvim_create_user_command('CheatSheetJupyniumScroll', function()
--   print([[
-- JUPYNIUM SCROLL COMMANDS:
-- <leader>jc  - Scroll to current cell
-- <leader>jk  - Scroll up
-- <leader>jj  - Scroll down
-- <leader>jA  - Toggle autoscroll
--   ]])
-- end, {})

-- vim.api.nvim_create_user_command('CheatSheetJupyniumCells', function()
--   print([[
-- JUPYNIUM CELLS COMMANDS:
-- <leader>je  - Execute selected cells
-- <leader>jo  - Clear selected cells outputs
-- <leader>jO  - Toggle scroll of selected cells outputs
--   ]])
-- end, {})

-- vim.api.nvim_create_user_command('CheatSheetJupyniumKernel', function()
--   print([[
-- JUPYNIUM KERNEL COMMANDS:
-- <leader>jR  - Restart kernel
-- <leader>jI  - Interrupt kernel
-- <leader>jK  - Select kernel
-- <leader>jH  - Kernel hover (like LSP hover)
-- <leader>jT  - Open kernel in terminal
--   ]])
-- end, {})

-- vim.api.nvim_create_user_command('CheatSheetJupyniumHighlight', function()
--   print([[
-- JUPYNIUM HIGHLIGHT:
-- <leader>jh  - Toggle shortsighted highlight
--   ]])
-- end, {})

-- vim.api.nvim_create_user_command('CheatSheetIron', function()
--   print([[
-- IRON (REPL) SHORTCUTS:
-- <space>rr       - Toggle REPL
-- <space>rR       - Restart REPL
-- <space>sf       - Send full file to REPL
-- <space>sl       - Send current line to REPL
-- <space>sp       - Send current paragraph/block to REPL
-- <space>sc       - Send motion or visual selection to REPL
-- <space>su       - Send code from top to cursor
-- <space>sb       - Send current code block
-- <space>sn       - Send code block and move to next
-- <space>sm       - Send marked text
-- <space>mc       - Mark motion or visual
-- <space>md       - Delete mark
-- <space>s<CR>    - Send <Enter> to REPL
-- <space>s<space> - Interrupt REPL
-- <space>sq       - Exit REPL
-- <space>cl       - Clear REPL screen
--   ]])
-- end, {})

vim.api.nvim_create_user_command('CheatSheetLSP', function()
  print([[
LSP SHORTCUTS:
gd          - Go to definition of symbol under cursor
gD          - Go to declaration of symbol under cursor
K           - Show hover documentation
<leader>dn  - Go to next error or warning
<leader>dp  - Go to previous error or warning
<leader>ls  - List symbols in current document
<leader>rn  - Rename symbol project-wide
<leader>ca  - Open code actions menu
<leader>e   - Show error/warning messages in floating window
  ]])
end, {})

