local catppuccinstatus, cattpuccin = pcall(require, "catppuccin")
if not catppuccinstatus then
	return
end

cattpuccin.setup({
	flavour = 'latte',
	background = {
        light = "latte",
        dark = "mocha",
    },
	no_italic = true,
	lsp_saga = true,
	harpoon = true,
})

vim.cmd.colorscheme("catppuccin")
