require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"gopls",
		"rust_analyzer",
		"intelephense",
		"clangd",
		"pylsp",
		"regal",
		"lua_ls",
		"html",
		"cssls",
		"laravel_ls",
		"phpactor",
	},
	automatic_installation = true,
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = {
	"gopls",
	"rust_analyzer",
	"intelephense",
	"clangd",
	"pylsp",
	"regal",
	"lua_ls",
	"html",
	"cssls",
	"laravel_ls",
	"phpactor",
}

local on_attach = function(client, bufnr)
	local bufopts = { noremap = true, silent = true, buffer = bufnr }

	vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
	vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, bufopts)
	vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, bufopts)
	vim.keymap.set("n", "<leader>ls", vim.lsp.buf.document_symbol, bufopts)
	vim.keymap.set("n", "<C-x>", vim.lsp.buf.rename, bufopts)
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
	vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, bufopts)
end

for _, server in ipairs(servers) do
	local config = {
		capabilities = capabilities,
		on_attach = on_attach,
	}

	if server == "pylsp" then
		config.settings = {
			pylsp = {
				plugins = {
					pycodestyle = { enabled = true, maxLineLength = 100 },
					pylint = { enabled = false },
					black = { enabled = true },
					rope_autoimport = { enabled = true },
				},
			},
		}
	end

	vim.lsp.config[server] = config

	vim.api.nvim_create_autocmd("FileType", {
		pattern = server == "lua_ls" and "lua" or server,
		callback = function()
			vim.lsp.start(vim.lsp.config[server])
		end,
	})
end
