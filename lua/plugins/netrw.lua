return {
  "prichrd/netrw.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    use_devicons = true,
  },
  config = function(_, opts)
    require("netrw").setup(opts)
  end
}
