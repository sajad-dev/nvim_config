require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = { "gopls", "rust_analyzer", "intelephense", "clangd", "pylsp" },
    automatic_installation = true,
})

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = { "gopls", "rust_analyzer", "intelephense", "clangd", "pylsp" }

local on_attach = function(client, bufnr)
    -- تنظیمات دلخواه برای زمان اتصال LSP
end

for _, server in ipairs(servers) do
    if server == "pylsp" then
        lspconfig[server].setup {
            on_attach = on_attach,
            capabilities = capabilities,
            settings = {
                pylsp = {
                    plugins = {
                        pycodestyle = { enabled = true, maxLineLength = 100 },
                        pylint = { enabled = false },
                        black = { enabled = true },
                    },
                },
            },
        }
    else
        lspconfig[server].setup {
            on_attach = on_attach,
            capabilities = capabilities,
        }
    end
end

