local nnoremap = require("fnacarellidev.keymap").nnoremap

nnoremap("<leader>pv", "<cmd> Ex <CR>")

nnoremap("<leader>s", ":so %<CR>") -- source current file
nnoremap("<leader>q", "<cmd> NERDTreeToggle <CR>")
nnoremap("<leader>n", "<cmd> NERDTreeFocus <CR>")

nnoremap("<C-j>", ":m +1 <CR>") -- CTRL + J Move line down
nnoremap("<C-k>", ":m .-2 <CR>") -- CTRL + K Move line up

nnoremap("qq", "<cmd> wq <CR>")
