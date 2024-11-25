return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim", name = "gruvbox", opts = {
    disable_background = true,
  } },

  -- Configure LazyVim to load rose-pine
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
