-- lua/plugins/barbar.lua
return {
  "romgrk/barbar.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- for file icons
    "lewis6991/gitsigns.nvim",     -- optional: for git indicators
  },
  init = function()
    -- Recommended keymaps for tab navigation
    vim.g.barbar_auto_setup = false -- disable auto-setup
    vim.keymap.set("n", "<Tab>", "<Cmd>BufferNext<CR>", { desc = "Next buffer" })
    vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", { desc = "Previous buffer" })
  end,
  config = function()
    require("barbar").setup({})
  end,
}

