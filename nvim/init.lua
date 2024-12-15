vim.g.mapleader = ' '

require("config.lazy")

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.keymap.set("n", "<space>x", ":.lua<CR>")

vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- lsp config keymaps
vim.keymap.set('n', 'grn', vim.lsp.buf.rename)
vim.keymap.set('n', 'gra', vim.lsp.buf.code_action)
vim.keymap.set('n', 'grr', vim.lsp.buf.references)

vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
