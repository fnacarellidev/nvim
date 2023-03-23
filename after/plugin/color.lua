local pinestatus, pine = pcall(require, "rose-pine")
if not pinestatus then
	return
end

pine.setup({
	disable_background = true,
	disable_float_background = true,
	dark_variant = 'main',
	disable_italics = true
})

vim.cmd.colorscheme("rose-pine")
