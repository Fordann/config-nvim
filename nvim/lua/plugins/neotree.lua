return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",  -- Use v3.x branch for latest features
  dependencies = {
    "nvim-lua/plenary.nvim",            -- Required for some of Neo-tree's features
    "nvim-tree/nvim-web-devicons",      -- Recommended for file icons
    "MunifTanjim/nui.nvim",             -- For UI components in Neo-tree
    -- "3rd/image.nvim", -- Optional image support (uncomment if you want it)
  },
  config = function()
    vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left<CR>')
    require("neo-tree").setup({
      -- Add your Neo-tree specific settings here
      filesystem = {
        filtered_items = {
          visible = true,  -- Show hidden files
        },
      },
      window = {
        position = "left", -- Set the file tree window on the left
        width = 30,        -- Width of the file tree window
      },
    })
  end,
}

