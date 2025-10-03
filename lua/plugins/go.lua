return {
  "ray-x/go.nvim",
  dependencies = {  -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "theHamsta/nvim-dap-virtual-text"
  },
  opts = {
    icons = false -- otherwise we use the trash icons defined by the plugin
  },
  config = function(_, opts)
    require("go").setup(opts)
    vim.api.nvim_set_hl(0, "blue", { fg = "#89b4fa" })
    vim.api.nvim_set_hl(0, "green", { fg = "#a6e3a1" })
    vim.api.nvim_set_hl(0, "yellow", { fg = "#f9e2af" })
    vim.api.nvim_set_hl(0, "orange", { fg = "#fab387" })

    vim.fn.sign_define('DapBreakpoint', { text='⬤', texthl='blue', linehl='DapBreakpoint', numhl='DapBreakpoint' })
    vim.fn.sign_define('DapBreakpointCondition', { text='⬤', texthl='blue', linehl='DapBreakpoint', numhl='DapBreakpoint' })
    vim.fn.sign_define('DapBreakpointRejected', { text='⬤', texthl='orange', linehl='DapBreakpoint', numhl='DapBreakpoint' })
    vim.fn.sign_define('DapStopped', { text='⬤', texthl='green', linehl='DapBreakpoint', numhl='DapBreakpoint' })
    vim.fn.sign_define('DapLogPoint', { text='⬤', texthl='yellow', linehl='DapBreakpoint', numhl='DapBreakpoint' })
  end,
  event = {"CmdlineEnter"},
  ft = {"go", 'gomod'},
}
