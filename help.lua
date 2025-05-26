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
]])
end, {})
