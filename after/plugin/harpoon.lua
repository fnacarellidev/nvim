local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local keymap = vim.keymap

keymap.set("n", "<leader>a", mark.add_file)
keymap.set("n", "<C-e>", ui.toggle_quick_menu)

keymap.set("n", "<C-j>", function() ui.nav_file(1) end)
keymap.set("n", "<C-k>", function() ui.nav_file(2) end)
keymap.set("n", "<C-3>", function() ui.nav_file(3) end)
keymap.set("n", "<C-4>", function() ui.nav_file(4) end)
