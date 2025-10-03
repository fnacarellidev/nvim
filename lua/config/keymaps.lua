local fzf_lua = require('fzf-lua')
local dap = require('dap')

local opts_silent = {
  silent = true
}

vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':wq<CR>')

vim.keymap.set('n', '<leader>ff', fzf_lua.files)
vim.keymap.set('n', '<leader>gf', fzf_lua.grep_visual)
vim.keymap.set('n', '<leader>gb', fzf_lua.grep_curbuf)

vim.keymap.set('n', '<C-j>', ':m +1 <CR>') -- CTRL + j Move line down
vim.keymap.set('n', '<C-k>', ':m.-2 <CR>') -- CTRL + k Move line up
vim.keymap.set('v', '<C-j>', ':m \'>+1<CR>gv=gv') -- CTRL + j in visual mode moves every line selected down
vim.keymap.set('v', '<C-k>', ':m \'<-2<CR>gv=gv') -- CTRL + k in visual mode moves every line selected up

vim.keymap.set('n', '<leader>pv', ':Ex<CR>', { silent = true }) -- Enters netrw
vim.keymap.set('n', '<leader>o', ':Rex<CR>', { silent = true }) -- Closes netrw

vim.keymap.set('n', 'x', '"_x') -- Deleting a single character does not go into paste register
vim.keymap.set('n', '<leader>v', ':vsp<CR>', opts_silent) -- Vertical Split

vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint)

vim.keymap.set('n', '<F5>', dap.continue)
vim.keymap.set('n', '<F10>', dap.step_over)
vim.keymap.set('n', '<F11>', dap.step_into)
vim.keymap.set('n', '<F12>', dap.step_out)
