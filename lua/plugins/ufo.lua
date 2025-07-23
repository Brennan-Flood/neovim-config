-- lua/plugins/ufo.lua
return {
	"kevinhwang91/nvim-ufo",
	dependencies = { "kevinhwang91/promise-async" },
	event = "BufReadPost",
	config = function()
		vim.o.foldcolumn = "1" -- '0' disables
		vim.o.foldlevel = 99 -- using ufo provider requires a high foldlevel
		vim.o.foldenable = true

		require("ufo").setup({
			provider_selector = function(_, _, _)
				return { "treesitter", "indent" }
			end,
		})

		-- Optional keymaps
		vim.keymap.set("n", "zR", require("ufo").openAllFolds)
		vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
	end,
}
