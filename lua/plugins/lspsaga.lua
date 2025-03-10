return {
	"nvimdev/lspsaga.nvim",
	opts = {
		scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
		-- use enter to open file with definition preview
		definition = {
			edit = "<CR>",
		},
		ui = {
			colors = {
				normal_bg = "#022746",
			},
			theme = "round",
			code_action = "",
		},
		symbol_in_winbar = {
			enable = true,
			show_file = true,
			respect_root = false,
			folder_level = 1,
			color_mode = true
		},
	}
}
