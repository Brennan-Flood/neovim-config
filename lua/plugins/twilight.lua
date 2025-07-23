return {
	"folke/twilight.nvim",
	cmd = { "Twilight", "TwilightEnable", "TwilightDisable" },
	opts = {
		dimming = {
			alpha = 0.25, -- amount of dimming
			color = { "Normal", "#ffffff" }, -- blend color with Normal highlight group
			term_bg = "#000000", -- if using a terminal with no colors
		},
		context = 10, -- number of lines around the current line to keep lit
		expand = { -- which treesitter nodes to keep fully lit
			"function",
			"method",
			"table",
			"if_statement",
		},
		exclude = {}, -- filetypes to exclude
	},
}
