local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
		require("nvim-treesitter.configs").setup(opts)
	return
end

return {
	"nvim-telescope/telescope.nvim",
	opts = {
		defaults = {
			previewer = true,
			mappings = {
				i = {
					["<C-k>"] = actions.move_selection_previous,
					["<C-j>"] = actions.move_selection_next,
					["<C-p>"] = actions.preview_scrolling_up,
					["<C-n>"] = actions.preview_scrolling_down,
					["<esc>"] = actions.close
				},
			},
		},
	}
}
