-- Configuration for stevearc/conform.nvim
return {
	"stevearc/conform.nvim",
	lazy = true,
	event = { "BufWritePre" },

	-- Ensure you have the necessary formatters installed globally (prettier, stylua, rustfmt)
	config = function()
		require("conform").setup({
			-- Define which formatters to use for each file type
			formatters_by_ft = {
				-- CRITICAL: Ensure 'rust' is mapped to 'rustfmt'
				rust = { "rustfmt" },

				lua = { "stylua" },
				javascript = { { "prettierd", "prettier" } },
				typescript = { { "prettierd", "prettier" } },
				json = { { "prettierd", "prettier" } },
				css = { { "prettierd", "prettier" } },
				html = { { "prettierd", "prettier" } },
				markdown = { { "prettierd", "prettier" } },
			},

			-- Configuration for running on save (BufWritePre)
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "never",
				async = true,

				-- Fallback: If 'BufWritePre' fails, sometimes defining a specific autocommand helps.
				-- We will use the built-in autocommand setup provided by conform.nvim
				ft_names = {
					"lua",
					"javascript",
					"typescript",
					"json",
					"css",
					"html",
					"markdown",
					"rust",
				},
			},
		})

		-- Optional: Set a keymap for manual formatting
		vim.keymap.set({ "n", "v" }, "<leader>fm", function()
			require("conform").format({
				lsp_fallback = true,
			})
		end, { desc = "Manual Format (Conform)" })
	end,
}
