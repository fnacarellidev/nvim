local g = vim.g
local o = vim.o
local opt = vim.opt

opt.nu = true
opt.relativenumber = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.numberwidth = 4

opt.wrap = false

opt.swapfile = false
opt.backup = false

opt.hlsearch = false
opt.incsearch = true

o.timeoutlen = 500
o.updatetime = 200
o.undofile = true
o.termguicolors = true

g.mapleader = " "
g.user42 = 'fnacarel'
g.mail42 = 'fnacarel@student.42sp.org.br'
