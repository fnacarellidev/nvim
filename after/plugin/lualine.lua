local edge_customized = require("lualine.themes.edge")

local my_colors = {
	blue = "#00AAFF",
	cyan = "#00FFD4",
	violet = "#FF61EF",
	yellow = "#FFF700",
}

edge_customized.normal.a.bg = my_colors.blue
edge_customized.insert.a.bg = my_colors.cyan
edge_customized.visual.a.bg = my_colors.violet
edge_customized.command.a.bg = my_colors.yellow

require('lualine').setup({
	options = {
		theme = edge_customized,
	},
})
