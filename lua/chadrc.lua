-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "decay",
  transparency = true,

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

-- M.disabled = {
--   n = {
--     ["<C-h>"] = "",
--     ["<C-l>"] = "",
--     ["<C-j>"] = "",
--     ["<C-k>"] = "",
--     ["gr"] = "",
--   },
--   i = {
--     ["<C-h>"] = "",
--     ["<C-l>"] = "",
--     ["<C-j>"] = "",
--     ["<C-k>"] = "",
--   },
-- }

M.disabled = {
  n = {
    ["gd"] = "",
    ["gr"] = "",
  },
}

M.lspoveride = {
  n = {
    ["gd"] = { "<cmd>Telescope lsp_definitions<CR>", "definitions" },
    ["gr"] = { "<cmd> Telescope lsp_references <CR>", "references" },
  },
}

M.plugins = "plugins"

return M
