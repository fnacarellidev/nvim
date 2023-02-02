local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end

saga.setup({
	-- keybinds for navigation in lspsaga window
	scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
	-- use enter to open file with definition preview
	definition = {
		edit = "<CR>",
	},
	ui = {
		colors = {
			normal_bg = "#022746",
		},
		theme = "round"
	},
	symbol_in_winbar = {
		enable = true,
		separator = " ➜ ",
		show_file = true,
		respect_root = false,
		folder_level = 1,
		color_mode = true
	}
})
