return {
  "lewis6991/gitsigns.nvim",
  opts = {
    numhl = true,
    preview_config = {
      border = "rounded",
    }
  },
  config = function(_, opts)
    require("gitsigns").setup(opts)
  end
}
