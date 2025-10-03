return {
  'nvimdev/lspsaga.nvim',
  opts = {
    ui = {
      code_action =  "",
    }
  },
  config = function(_, opts)
    require('lspsaga').setup(opts)
  end,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  }
}

