require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- ak-code start
vim.cmd('set autochdir')
vim.cmd('set mouse=n')
vim.cmd('set foldmethod=indent')
vim.cmd('set foldlevel=100')
vim.cmd('set clipboard+=unnamedplus')
vim.cmd('set number')
-- vim.cmd('set relativenumber') -- Включаем относительные номера строк
vim.cmd('set whichwrap=b,s') -- Выключить переход на новую строку при достижении конца строки курсором
vim.cmd('set wildmenu')
vim.cmd('set wildmode=longest:full,full')
vim.cmd('set wildoptions=pum')

vim.cmd([[
  set list
  "set listchars=tab:-»,trail:￮,multispace:·,lead:\ ,extends:▶,precedes:◀,nbsp:‿
  set listchars=tab:--,trail:￮,multispace:·,lead:\ ,extends:▶,precedes:◀,nbsp:‿
]])

require("nvim-tree").setup({
  filters = {
    dotfiles = true,
  },
  view = {
    width = 30,
  },
})

vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    local mode = vim.api.nvim_get_mode().mode
    local filetype = vim.bo.filetype
    if vim.bo.modified == true and mode == 'n' then
      vim.cmd('lua vim.lsp.buf.format()')
    else
    end
  end
})

local cmp = require 'cmp'

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'cmdline' } -- Автодополнение для команд Neovim
  }
})
-- ak-code end
