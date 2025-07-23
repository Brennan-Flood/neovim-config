return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30,
        side = "left",
        preserve_window_proportions = true,
      },
      renderer = {
        highlight_git = true,
        icons = { show = { file = true, folder = true } },
      },
      update_focused_file = {
        enable = true,
      },
    })

    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file tree" })
  end,
}

