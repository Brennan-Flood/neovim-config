-- plugins/format.lua
return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = {
      lsp_fallback = true,
      timeout_ms = 500,
    },
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      json = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      sh = { "shfmt" },
      yaml = { "yamlfmt" },
      markdown = { "prettier" },
    },
  },
  config = function(_, opts)
    require("conform").setup(opts)
    vim.api.nvim_create_user_command("Format", function()
      require("conform").format({ async = true, lsp_fallback = true })
    end, {})
  end,
}

