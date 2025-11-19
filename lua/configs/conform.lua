local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },
    -- ak-code start
    go = { "gofmt" },
    rust = { "rustfmt" },
    python = { "black" },
    c = { "clang_format" },
    bash = { "shfmt", "shellcheck" },
    zsh = { "shfmt", "shellcheck" },
    sh = { "shfmt", "shellcheck" },
    css = { "prettier" },
    html = { "prettier" },
    tf = { "terraform_fmt" },
    json = { "jsonnetfmt", "jsonlint" },
    yaml = { "yamlfmt", "yamllint" },
    -- ak-code end
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
