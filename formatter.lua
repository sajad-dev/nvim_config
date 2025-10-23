require("conform").setup({
	formatters_by_ft = {
		javascript = { "prettier" },
		typescript = { "prettier" },
		javascriptreact = { "prettier" },
		typescriptreact = { "prettier" },
		python = { "isort", "black" },
		rust = { "rustfmt" },
		go = { "goimports" },
		c = { "clang-format" },
		json = { "prettier" },
		rego = { "opa", "fmt", "--write" },
		lua = { "stylua" },
		html = { "prettier" },
		css = { "prettier" },
		php = { "pint" },
	},
})
