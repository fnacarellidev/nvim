-- Cattpuccin highlight groups
local highlight = {
  "RainbowDelimiterRed",
  "RainbowDelimiterYellow",
  "RainbowDelimiterBlue",
  "RainbowDelimiterOrange",
  "RainbowDelimiterGreen",
  "RainbowDelimiterViolet",
  "RainbowDelimiterCyan",
}

return {
  "lukas-reineke/indent-blankline.nvim",
  -- Couldn't clone due to meli's security checks
  -- dependencies = {
  --   "HiPhish/rainbow-delimiters.nvim",
  -- },
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  opts = {
    scope = {
      highlight = highlight,
      show_start = false,
      char = "▏",
    }
  },
  config = function(_, opts)
    require("ibl").setup(opts)
  end
}
