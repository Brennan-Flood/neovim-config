-- lua/plugins/tokyonight.lua
return {
	"folke/tokyonight.nvim",
	priority = 1000,
	lazy = false,
	config = function()
		vim.cmd("colorscheme tokyonight-moon")
	end,
}
