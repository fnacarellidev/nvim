local keymap = vim.keymap
local builtin_setup, builtin = pcall(require, 'telescope.builtin')
if not builtin_setup then
	return
end

-- Telescope
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fs', builtin.live_grep, {})
keymap.set('n', '<leader>fc', builtin.grep_string, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})

keymap.set("i", "jk", "<ESC>") -- Typing jk quits insert mode

-- File and Buffer Related
keymap.set("n", "<leader>w", "<cmd>w<CR>") -- Save
keymap.set("n", "<leader>q", "<cmd>wq<CR>") -- Save and quit
keymap.set("n", "<leader>bq", "<cmd>bd<CR>") -- Buffer quit
keymap.set("n", "<leader>nh", "<cmd>nohl<CR>") -- Clears every highlight
keymap.set("n", "<leader>g", "gg=G", { silent = true }) -- Fix indentation in current buffer
keymap.set("n", "<leader>if", "=i{") -- Fix indentation in current function

-- Move Lines
keymap.set("n", "<C-j>", "<cmd>m +1 <CR>") -- CTRL + j Move line down
keymap.set("n", "<C-k>", "<cmd>m.-2 <CR>") -- CTRL + k Move line up
keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv") -- CTRL + j in visual mode moves every line selected down
keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv") -- CTRL + k in visual mode moves every line selected up

-- Netrw
keymap.set("n", "<leader>pv", "<cmd>Ex<CR>") -- Enters netrw
keymap.set("n", "<leader>o", "<cmd>Rex<CR>") -- Closes netrw

-- Character Manipulation
keymap.set("n", "<leader>+", "<C-a>") -- Increments value in cursor
keymap.set("n", "<leader>-", "<C-x>") -- Decrements value in cursor
keymap.set("n", "x", '"_x') -- Deleting a single character does not go into paste register

-- Tab Management
keymap.set("n", "<leader>to", ":tabnew<CR>") -- Open new tab
keymap.set("n", "<leader>tc", ":tabclose<CR>") -- Close tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- Next tab
keymap.set("n", "<leader>tN", ":tabp<CR>") -- Prev tab
keymap.set("n", "<leader>v", ":vsp<CR>", { silent = true}) -- Vertical Split
