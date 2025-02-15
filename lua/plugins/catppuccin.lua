return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- Ensures it loads first
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
    })
    vim.cmd.colorscheme "catppuccin"
  end,
}

