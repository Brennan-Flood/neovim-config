return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto", -- or use "gruvbox", "tokyonight", etc.
				section_separators = "",
				component_separators = "",
			},
			sections = {
				lualine_c = { { "filename", path = 1 } }, -- shows file with relative path
				lualine_x = { "encoding", "filetype" },
			},
		})
	end,
}
