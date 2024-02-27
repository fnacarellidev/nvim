return {
	{
		"catppuccin/nvim",
		lazy = false,
		config = function()
			require("catppuccin").setup({
				flavour = 'latte',
				background = {
					light = 'latte',
					dark = 'mocha',
				},
				transparent_background = false,
				no_italic = true,
			})
		end,
	},
	{
		"tpope/vim-commentary",
		lazy = false,
	},
	{
		"onsails/lspkind.nvim"
	},
	{
		'VonHeikemen/lsp-zero.nvim',
		dependencies = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},
			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		},
	},
}
