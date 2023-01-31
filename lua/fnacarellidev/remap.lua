local keymap = vim.keymap

keymap.set("n", "<C-j>", "<cmd>m +1 <CR>") -- CTRL + J Move line down
keymap.set("n", "<C-k>", "<cmd>m.-2 <CR>") -- CTRL + K Move line up

keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>")
keymap.set("n", "<leader>n", "<cmd>NvimTreeFocus<CR>")

keymap.set("n", "<leader>l", "<cmd>BufferNext<CR>")
keymap.set("n", "<leader>h", "<cmd>BufferPrevious<CR>")
keymap.set("n", "<leader>e", "<cmd>BufferClose<CR>")

keymap.set("n", "<leader>q", "<cmd> wq <CR>")
keymap.set("n", "<leader>w", "<cmd> w <CR>")

keymap.set("n", "<leader>d", "<cmd> bd <CR>")

--netrw
keymap.set("n", "<leader>pv", "<cmd>Ex <CR>")
keymap.set("n", "<leader>o", "<cmd>Rex <CR>")
