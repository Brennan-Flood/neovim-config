return {
	"karb94/neoscroll.nvim",
	config = function()
		require("neoscroll").setup({
			easing_function = "quadratic", -- smoothness preset
			hide_cursor = true,
			stop_eof = true,
		})
	end,
}
