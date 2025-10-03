return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    integrations = {
      enabled = true,
    }
  },
  config = function()
    vim.cmd("colorscheme catppuccin-mocha")
  end
}
