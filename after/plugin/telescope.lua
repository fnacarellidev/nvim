local builtin = require('telescope.builtin')
local keymap = vim.keymap

local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

telescope.setup({
	defaults = {
		previewer = true,
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				["<C-g>"] = actions.move_to_top,
				["<C-b>"] = actions.move_to_bottom,
				["<esc>"] = actions.close
			}
		}
	}
})

telescope.load_extension("fzf")
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fs', builtin.live_grep, {})
keymap.set('n', '<leader>fc', builtin.grep_string, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
