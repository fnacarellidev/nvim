return {
  "neovim/nvim-lspconfig",
  config = function()
    local capabilities = require('blink.cmp').get_lsp_capabilities()
    local lsps = {'gopls', 'lua_ls'}
    -- vim.lsp.config["gopls"] = {
    --   capabilities = capabilities
    -- }
    --
    -- vim.lsp.config["lua_ls"] = {
    --   capabilities = capabilities
    -- }


    for _, lsp in ipairs(lsps) do
      vim.lsp.config[lsp] = {
        capabilities = capabilities
      }

      vim.lsp.enable(lsp)
    end
  end,
}
