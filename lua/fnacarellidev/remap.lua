local nnoremap = require("fnacarellidev.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<leader>t", "<cmd>NERDTreeToggle<CR>")
nnoremap("<C-j>", ":m +1<CR>") -- CTRL + J Move line down
nnoremap("<C-k>", ":m .-2<CR>") -- CTRL + K Move line up
