local g = vim.g
local o = vim.o
local opt = vim.opt

opt.nu = true
opt.relativenumber = true

-- Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.numberwidth = 4

opt.wrap = false

opt.swapfile = false
opt.backup = false

-- Yank copies to clipboard
opt.clipboard = 'unnamedplus'

-- Split Windows
opt.splitright = true
opt.splitbelow = true

opt.scrolloff = 8
opt.colorcolumn = "80"

o.timeoutlen = 500
o.updatetime = 200
o.undofile = true
o.termguicolors = true

g.mapleader = " "

vim.cmd("autocmd BufEnter * set formatoptions-=cro")
