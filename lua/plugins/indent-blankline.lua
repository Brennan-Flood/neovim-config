-- lua/plugins/indent-blankline.lua
return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		indent = { char = "│" },
		scope = { enabled = true },
	},
}
