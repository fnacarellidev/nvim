require'nvim-treesitter.configs'.setup {
	ensure_installed = {
		"bash", "c", "lua", "rust", "cpp"
	},
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	incremental_selection = {
		enable = true,
	}
}
