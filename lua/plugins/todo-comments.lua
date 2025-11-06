-- lua/plugins/todo-comments.lua
return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("todo-comments").setup()
	end,
	event = "VeryLazy", -- or "BufReadPost" for earlier loading
}
