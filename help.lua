vim.api.nvim_create_user_command('CheatSheet', function()
print([[
	SEARCH :
	<leader>Z Open Spectre
	<leader>zw Search with word on the cursor
	<leader>zf Search in one file
	<leader>fg Search word in projects
	<leader>ff Find file in projects

	KWIN WINDOWS :
	Meta+CR Minimaize All window
	Meta + (left/right/top/down) Move window 
	Alt+up Maxzimaize
	Alt+down Minimaize
	Alt+M Resize

	NVIM TREE:
	Cntrl+v Split Vertical 
	Cntrl+x Split Horizontal 

	REMOVE HILIGHT
	:noh command remove HILIGHT

	INSERT MOD SHORTCUT:
	Ctrl-r+" Paste
	Ctrl-r+ (0-9) Paste from registery defualt
	Cntrl-r+ (a-z) for paste registry custom
	Cntrl-r++ Paste from system clipboard
	<leader>y Copy in system clipboard

	Cntrl-o (command like u , x , ... )

	Install tools :pip install jupynium jupytext notebook selenium

	JUPYNIUM SERVER:
	<leader>kp  :KillPort
	<leader>kj  :JupyterInstallTools
	<leader>kq  :JupyterNotebook
	<leader>js  Start and attach to server
	<leader>jt  Start and attach to server in terminal (debug)
	<leader>ja  Attach to existing server

	JUPYNIUM SYNC:
	<leader>jS  Start sync (by filename or tab index)
	<leader>jX  Stop sync
	<leader>jl  Load from .ipynb tab
	<leader>jL  Load from .ipynb tab and start sync

	JUPYNIUM NOTEBOOK:
	<leader>jw  Save .ipynb file
	<leader>jd  Download .ipynb file
	<leader>jD  Toggle auto download .ipynb

	JUPYNIUM SCROLL:
	<leader>jc  Scroll to current cell
	<leader>jk  Scroll up
	<leader>jj  Scroll down
	<leader>jA  Toggle autoscroll

	JUPYNIUM CELLS:
	<leader>je  Execute selected cells
	<leader>jo  Clear selected cells outputs
	<leader>jO  Toggle scroll of selected cells outputs

	JUPYNIUM KERNEL:
	<leader>jR  Restart kernel
	<leader>jI  Interrupt kernel
	<leader>jK  Select kernel
	<leader>jH  Kernel hover (like LSP hover)
	<leader>jT  Open kernel in terminal

	JUPYNIUM HIGHLIGHT:
	<leader>jh  Toggle shortsighted highlight

	IRON :
	<space>rr       Toggle REPL
	<space>rR       Restart REPL
	<space>sf       Send full file to REPL
	<space>sl       Send current line to REPL
	<space>sp       Send current paragraph/block to REPL
	<space>sc       Send motion or visual selection to REPL
	<space>su       Send code from top to cursor
	<space>sb       Send current code block
	<space>sn       Send code block and move to next
	<space>sm       Send marked text
	<space>mc       Mark motion or visual
	<space>md       Delete mark
	<space>s<CR>    Send <Enter> to REPL
	<space>s<space> Interrupt REPL
	<space>sq       Exit REPL
	<space>cl       Clear REPL screen

]])
end, {})

