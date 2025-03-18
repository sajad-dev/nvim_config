    require("conform").setup({
      formatters_by_ft = {
        python = { "black" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        php = { "php_cs_fixer" },
        rust = { "rustfmt" },
        go = { "gofmt" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    })
