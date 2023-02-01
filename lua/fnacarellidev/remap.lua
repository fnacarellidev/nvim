local keymap = vim.keymap

-- Insert Mode
keymap.set("i", "jk", "<ESC>") -- Typing jk quits insert mode

-- Normal Mode
keymap.set("n", "<C-j>", "<cmd>m +1 <CR>") -- CTRL + j Move line down
keymap.set("n", "<C-k>", "<cmd>m.-2 <CR>") -- CTRL + k Move line up
keymap.set("n", "<leader>w", "<cmd>w<CR>")
keymap.set("n", "<leader>q", "<cmd>wq<CR>")
keymap.set("n", "<leader>bq", "<cmd>bd<CR>") -- Buffer quit
keymap.set("n", "<leader>pv", "<cmd>Ex<CR>") -- Enters netrw
keymap.set("n", "<leader>o", "<cmd>Rex<CR>") -- Closes netrw
keymap.set("n", "<leader>nh", "<cmd>nohl<CR>") -- Clears every highlight
keymap.set("n", "x", '"_x') -- Deleting a single character does not go into paste register
keymap.set("n", "<leader>+", "<C-a>") -- Increments value in cursor
keymap.set("n", "<leader>-", "<C-x>") -- Decrements value in cursor
keymap.set("n", "<leader>g", "gg=G", { silent = true }) -- Fix indentation in current buffer

-- Visual Mode
keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv") -- CTRL + j in visual mode moves every line selected down
keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv") -- CTRL + k in visual mode moves every line selected up
