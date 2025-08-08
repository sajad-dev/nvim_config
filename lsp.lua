require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = { "gopls", "rust_analyzer", "intelephense", "clangd", "pylsp" },
    automatic_installation = true,
})

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = { "gopls", "rust_analyzer", "intelephense", "clangd", "pylsp" }

local on_attach = function(client, bufnr)
  local bufopts = { noremap=true, silent=true, buffer=bufnr }

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, bufopts)
  vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, bufopts)
  vim.keymap.set('n', '<leader>ls', vim.lsp.buf.document_symbol, bufopts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, bufopts)


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

