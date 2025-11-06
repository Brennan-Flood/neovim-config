return {
	"sindrets/winshift.nvim",
	cmd = { "WinShift", "WinShiftN", "WinShiftM" },
	keys = {
		{ "<leader>wm", "<cmd>WinShift<CR>", desc = "Move window" },
	},
	config = function()
		require("winshift").setup({
			highlight_moving_win = true, -- highlight window being moved
			focused_hl_group = "Visual", -- highlight group for focused window
			moving_win_options = {
				wrap = false,
				cursorline = false,
				cursorcolumn = false,
				colorcolumn = "",
			},
		})
	end,
}
