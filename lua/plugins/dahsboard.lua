-- plugins/dashboard.lua
return {
	"glepnir/dashboard-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("dashboard").setup({
			theme = "doom",
			config = {
				header = {
					"",
					"███╗   ██╗██╗   ██╗██╗███╗   ███╗",
					"████╗  ██║██║   ██║██║████╗ ████║",
					"██╔██╗ ██║██║   ██║██║██╔████╔██║",
					"██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
					"██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
					"╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
					"",
				},
				center = {
					{ icon = "󰈞  ", desc = "Find File", action = "Telescope find_files", key = "f" },
					{ icon = "  ", desc = "New File", action = "ene | startinsert", key = "n" },
					{ icon = "󰈢  ", desc = "Recent Files", action = "Telescope oldfiles", key = "r" },
					{ icon = "󰱼  ", desc = "Find Word", action = "Telescope live_grep", key = "g" },
					{ icon = "  ", desc = "Config", action = "edit ~/.config/nvim/init.lua", key = "c" },
					{ icon = "󰗼  ", desc = "Quit", action = "qa", key = "q" },
				},
				footer = function()
					return { "Be legendary." }
				end,
			},
		})
	end,
}
