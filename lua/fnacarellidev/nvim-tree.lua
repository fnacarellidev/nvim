require("nvim-tree").setup({
	view = {
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = {
		highlight_opened_files = "all",
		indent_markers = {
			enable = true,
		},
	},
})
