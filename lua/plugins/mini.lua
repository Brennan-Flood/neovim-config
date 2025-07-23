return {
	"echasnovski/mini.nvim",
	version = "*",
	config = function()
		local mini_ai = require("mini.ai")
		local mini_comment = require("mini.comment")
		local mini_pairs = require("mini.pairs")
		local mini_surround = require("mini.surround")
		local mini_indentscope = require("mini.indentscope")

		mini_ai.setup()
		mini_comment.setup()
		mini_pairs.setup()
		mini_surround.setup()
		mini_indentscope.setup({
			symbol = "│",
			options = { try_as_border = true },
		})
	end,
}
