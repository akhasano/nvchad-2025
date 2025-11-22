require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "gopls",
  "bashls",
  "ansiblels",
  "pyright",
  "lua_ls",
  "terraform-ls",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers

vim.lsp.config.ansiblels = {
  filetypes = { 'yaml', 'yaml.ansible', 'ansible' }
}
