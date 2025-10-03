return {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      "gopls",
      "lua_ls",
    },
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
  },
}
