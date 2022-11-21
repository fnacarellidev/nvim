local nnoremap = require("fnacarellidev.keymap").nnoremap

nnoremap("<C-j>", "<cmd>m +1 <CR>") -- CTRL + J Move line down
nnoremap("<C-k>", "<cmd>m.-2 <CR>") -- CTRL + K Move line up
nnoremap("<leader>t", "<cmd>NvimTreeToggle<CR>")
nnoremap("<leader>n", "<cmd>NvimTreeFocus<CR>")
nnoremap("<leader>l", "<cmd>BufferNext<CR>")
nnoremap("<leader>h", "<cmd>BufferPrevious<CR>")
nnoremap("<leader>e", "<cmd>BufferClose<CR>")
nnoremap("<leader>q", "<cmd> wq <CR>")
nnoremap("<leader>w", "<cmd> w <CR>")
