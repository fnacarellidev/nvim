local keybinds = {
	{
		"<leader>a",
		(function()
			local harpoon = require("harpoon") harpoon:list():append()
		end)
	},
	{
		"<C-e>",
		(function()
			local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list())
		end)
	},
	{
		"<C-l>",
		(function()
			local harpoon = require("harpoon") harpoon:list():clear()
		end)
	},
}

return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	branch = "harpoon2",
	cmd = "Harpoon",
	config = function()
		require("harpoon"):setup()
	end,
	keys = keybinds
}
