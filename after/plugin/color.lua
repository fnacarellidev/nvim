-- vim.g.tokyonight_transparent_sidebar = true
-- vim.g.tokyonight_transparent_background = true
-- vim.opt.background = "dark"

-- vim.cmd("colorscheme tokyonight")
-- vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "None" })
end

ColorMyPencils("rose-pine")
