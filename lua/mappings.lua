require "nvchad.mappings"

local map = vim.keymap.set
local unmap = vim.keymap.del

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i" }, "<C-h>", "<cmd>TmuxNavigateRight<CR>")
map({ "n", "i" }, "<C-l>", "<cmd>TmuxNavigateLeft<CR>")
map({ "n", "i" }, "<C-j>", "<cmd>TmuxNavigateDown<CR>")
map({ "n", "i" }, "<C-k>", "<cmd>TmuxNavigateUp<CR>")

local actions = require "telescope.builtin"
map("n", "gd", function()
  actions.lsp_definitions()
end, { desc = "Lsp Go to definition" })
map("n", "gr", function()
  actions.lsp_references()
end, { desc = "Lsp Go to references" })

map("n", "<leader>tt", function()
  require("base46").toggle_transparency()
end)

-- nvim-tree
-- map("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Navigale vul panes vetter
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
