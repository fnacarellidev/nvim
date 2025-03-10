return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function(_, opts)
		require("mason").setup()
		require("mason-lspconfig").setup(opts)
	end,
	opts = {
		ensure_installed = {
			"gopls",
			"clangd"
		},
	}
}
