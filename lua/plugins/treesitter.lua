return {
	"nvim-treesitter/nvim-treesitter",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = {
			"c", "go", "bash"
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
}
