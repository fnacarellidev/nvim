return {
	{ "nvim-treesitter/nvim-treesitter", lazy = false },
	{
		"catppuccin/nvim",
		lazy = false,
		config = function()
			require("catppuccin").setup({
				flavour = 'latte',
				transparent_background = false,
				no_italic = true,
			})
		end,
	},
	{
		"tpope/vim-commentary",
		lazy = false,
	},
	{ "onsails/lspkind.nvim", lazy = true, event = "LspAttach" },
	-- lsp related
	{ 'VonHeikemen/lsp-zero.nvim' },
	{ 'neovim/nvim-lspconfig' },
	{ 'williamboman/mason.nvim' },
	{ 'williamboman/mason-lspconfig.nvim' },
	{ 'saadparwaiz1/cmp_luasnip' },
	{ "hrsh7th/nvim-cmp", lazy = true, event = "InsertCharPre" },
	{ "hrsh7th/cmp-buffer", lazy = true, event = "InsertCharPre" },
	{ "hrsh7th/cmp-path", lazy = true, event = "InsertCharPre" },
	{ "hrsh7th/cmp-nvim-lsp", lazy = true, event = "InsertCharPre" },
	{ "hrsh7th/cmp-nvim-lua", lazy = true, event = "InsertCharPre" },
	{ 'L3MON4D3/LuaSnip' },
	{ 'rafamadriz/friendly-snippets' },
	{ "glepnir/lspsaga.nvim" },
}
