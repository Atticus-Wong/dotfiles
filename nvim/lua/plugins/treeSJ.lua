return {
  "Wansmer/treesj",
  keys = {
    {
      "<space>m",
      "<CMD>TSJToggle<CR>",
      desc = "Toggle treesitter join",
    },
  },
  cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
  opts = {
    use_default_keymaps = false,
    max_join_length = 300,
  },
}
