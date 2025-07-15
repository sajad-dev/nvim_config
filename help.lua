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
