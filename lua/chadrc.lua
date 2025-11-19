-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",
  hl_override = {
    -- Группа для ФОНА ВСЕЙ ИЗМЕНЕННОЙ СТРОКИ
    DiffChange = {
      bg = "#4c4c4c", -- Серый
      fg = "NONE",    -- Сохраняем цвет текста темы
      bold = true
    },

    -- Группа для ФОНА СПЕЦИФИЧЕСКИ ИЗМЕНЕННОГО ТЕКСТА (самая яркая часть)
    DiffText   = {
      bg = "#FFA500", -- Ярко-оранжевый
      fg = "#000000", -- Черный текст для максимальной читаемости
      bold = true
    },

    -- Остальные группы, тоже сделанные более насыщенными
    DiffAdd    = { bg = "#4C784C", fg = "NONE" },
    DiffDelete = { bg = "#804040", fg = "NONE" },

    -- Ваши старые настройки:
    -- Comment    = { italic = true },
    -- ["@comment"] = { italic = true },
  },
  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }
-- ak-code start
M.ui = {
  telescope = {
    style = "bordered",
  },
}

M.term = {
  float = {
    border = "rounded", -- стиль границы окна (можно использовать "single", "double" и др.)
    col = 0.02,
    row = 0,
    width = 0.96,
    height = 0.9,
  }
}
-- ak-code end

return M
