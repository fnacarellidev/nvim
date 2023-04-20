local keymap = vim.keymap
local telescope_setup, telescope = pcall(require, "telescope")
local builtin_setup, builtin = pcall(require, 'telescope.builtin')
local actions_setup, actions = pcall(require, "telescope.actions")

if not telescope_setup then
	return
end

if not actions_setup then
	return
end

if not builtin_setup then
	return
end

telescope.setup({
	defaults = {
		previewer = true,
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				["<C-p>"] = actions.preview_scrolling_up,
				["<C-n>"] = actions.preview_scrolling_down,
				["<esc>"] = actions.close
			}
		}
	}
})

-- telescope.load_extension('fzf')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fs', builtin.live_grep, {})
keymap.set('n', '<leader>fc', builtin.grep_string, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
