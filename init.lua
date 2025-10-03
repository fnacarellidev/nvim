require("config.lazy")
require("config.keymaps")
require("config.configs")
require("config.autocmds")

-- vim.api.nvim_create_autocmd('BufLeave', {
--   callback = function (ev)
--     vim.notify(vim.inspect(ev), vim.log.levels.INFO)
--   end
-- })
