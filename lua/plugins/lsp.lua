-- lua/plugins/lsp.lua
return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "williamboman/mason.nvim", config = true },
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"emmet_ls",
				"jsonls",
				"yamlls",
				"marksman",
				"lua_ls",
				"bashls",
				"dockerls",
			},
		})

		local lspconfig = require("lspconfig")
		lspconfig.tsserver.setup({})
		lspconfig.lua_ls.setup({})
		lspconfig.rust_analyzer.setup({})
	end,
}
