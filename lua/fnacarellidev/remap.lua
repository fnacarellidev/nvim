vim.keymap.set("n", "<C-j>", "<cmd>m +1 <CR>") -- CTRL + J Move line down
vim.keymap.set("n", "<C-k>", "<cmd>m.-2 <CR>") -- CTRL + K Move line up

vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>n", "<cmd>NvimTreeFocus<CR>")

vim.keymap.set("n", "<leader>l", "<cmd>BufferNext<CR>")
vim.keymap.set("n", "<leader>h", "<cmd>BufferPrevious<CR>")
vim.keymap.set("n", "<leader>e", "<cmd>BufferClose<CR>")

vim.keymap.set("n", "<leader>q", "<cmd> wq <CR>")
vim.keymap.set("n", "<leader>w", "<cmd> w <CR>")

-- netrw
vim.keymap.set("n", "<leader>pv", "<cmd>Ex <CR>")
vim.keymap.set("n", "<leader>o", "<cmd>Rex <CR>")
