-- lua/plugins/notify.lua
return {
	"rcarriga/nvim-notify",
	lazy = false, -- load on startup
	config = function()
		local notify = require("notify")
		vim.notify = notify

		notify.setup({
			stages = "fade", -- animation style: "fade", "slide", "static"
			timeout = 3000, -- time in ms before closing notification
			render = "default", -- or "minimal"
			background_colour = "#000000", -- fix transparency flicker
		})
	end,
}
