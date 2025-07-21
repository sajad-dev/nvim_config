local lspconfig = require('lspconfig')
local cmp_nvim_lsp = require('cmp_nvim_lsp')
local typescript_tools = require('typescript-tools')
local util = require('lspconfig.util')
local capabilities = cmp_nvim_lsp.default_capabilities()

local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true }
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K',  '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
end

local servers = { "gopls", "rust_analyzer", "intelephense", "clangd" }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    capabilities = capabilities,
    on_attach = on_attach,
  }
end

typescript_tools.setup {
  server = {
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
      documentFormatting = true,
      jsxCompletion = true,
    }
  },
}



local cmp = require'cmp'
local luasnip = require'luasnip'

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, {'i', 's'}),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {'i', 's'}),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path' },
  }),
  formatting = {
    format = require('lspkind').cmp_format({ with_text = true, maxwidth = 50 }),
  },
})

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
})

lspconfig.pylsp.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  on_init = function(client)
    local path = client.config.root_dir
    -- اضافه کردن مسیر پروژه به PYTHONPATH
    vim.env.PYTHONPATH = path .. ":" .. (vim.env.PYTHONPATH or "")
    -- تنظیم workspaceFolders برای اطمینان از شناسایی درست پروژه
    client.config.workspace_folders = { { uri = vim.uri_from_fname(path), name = "workspace" } }
  end,
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = true,
          maxLineLength = 100,
        },
        pylint = { enabled = false },
        flake8 = { enabled = false },
        mccabe = { enabled = false },
        yapf = { enabled = false },
        autopep8 = { enabled = false },
        black = { enabled = true },
        rope_autoimport = { enabled = true },
        pyls_mypy = { enabled = true, live_mode = false },
        jedi_completion = { enabled = true, include_params = true },
      },
    },
  },
}

