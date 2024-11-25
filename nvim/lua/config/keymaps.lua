-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local n_opts = { silent = true, noremap = true }
local t_opts = { silent = true }
local keymap = vim.keymap

-- entering normal mode from insert mode
keymap.set("i", "jk", "<ESC>")

keymap.set("t", "jk", "<C-\\><C-n>", n_opts)
-- entering normal mode from terminal

-- vertical movement
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "C-u>", "<C-u>zz")

-- remove highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- vim-maximizer
keymap.set("n", "<leader>mm", ":MaximizerToggle<CR>")

-- floating terminal
keymap.set("n", "<leader>fd", ":FloatermToggle<CR>")

keymap.set("n", "<leader>fa", ":FloatermKill!")

-- oil
keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Treesitter join
keymap.set("n", "<leader>mt", "<CMD>TSJToggle<CR>", { desc = "Treesitter join/split toggle" })
