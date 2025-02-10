return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- Ensures parsers are up to date
  event = { "BufReadPost", "BufNewFile" }, -- Load Treesitter on file open
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "lua", "vim", "bash", "python", "javascript" }, -- Add more parsers here as needed
      highlight = {
        enable = true, -- Enable Treesitter highlighting
        additional_vim_regex_highlighting = false, -- Disable Vim's default regex highlighting to avoid conflicts
      },
      indent = { enable = true }, -- Enable Treesitter-based indentation
    })
  end,
}

