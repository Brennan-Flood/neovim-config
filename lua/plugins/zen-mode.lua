return {
	"folke/zen-mode.nvim",
	config = function()
		require("zen-mode").setup({
			window = {
				width = 80,
				options = {
					number = false,
					relativenumber = false,
				},
			},
			plugins = {
				options = {
					enabled = true,
					ruler = false,
					showcmd = false,
				},
				twilight = true, -- if using twilight.nvim too
			},
		})
		vim.keymap.set("n", "<leader>z", function()
			require("zen-mode").toggle()
		end, { desc = "Toggle Zen Mode" })
	end,
}
