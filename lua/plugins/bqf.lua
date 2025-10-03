return {
  'kevinhwang91/nvim-bqf',
  dependencies = {
    "junegunn/fzf"
  },
  opts = {
    func_map = {
      open = "",
      openc = "<CR>"
    },
    preview = {
      show_title = false,
      show_scroll_bar = false,
      buf_label = false,
      delay_syntax = 10,
      win_height = 1000, -- full screen
    }
  },
  config = function(_, opts)
    require("bqf").setup(opts)
  end
}
