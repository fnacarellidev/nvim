require("nvim-tree").setup({
	view = {
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
				{ key = "t", action = "dir_down"},
			},
		},
		float = {
			enable = true,
		},
	},
	renderer = {
		highlight_opened_files = "all",
		indent_markers = {
			enable = true,
		},
	},
})
