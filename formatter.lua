require("conform").setup({
  formatters_by_ft = {
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    python = { "black" },
    php = { "php_cs_fixer" },
    rust = { "rustfmt" },
    go = { "gofmt" },
    c = { "clang-format" },
  },

})

