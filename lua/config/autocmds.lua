local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
local utils = require("config.utils")

-- GoFmt/GoImports on file save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    require('go.format').goimports()
  end,
  group = format_sync_grp,
})

-- Fixes the terminal bg conflicting with nvim bg
vim.api.nvim_create_autocmd({ "UIEnter", "ColorScheme" }, {
  callback = function()
    local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
    if not normal.bg then return end
    io.write(string.format("\027]11;#%06x\027\\", normal.bg))
  end,
  desc = 'Sync Neovim Background with terminal'
})

-- Fixes the terminal bg conflicting with nvim bg
vim.api.nvim_create_autocmd("UILeave", {
  callback = function()
    io.write("\027]111\027\\")
  end,
  desc = 'Restore Terminal Background'
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = "qf",
  callback = function(ev)
    vim.opt_local.cursorline = true
    vim.schedule(function()
      utils.reset_highlight_group(0, 'QuickFixLine')
      utils.reset_highlight_group(0, 'qfText')
    end)
    utils.reset_highlight_group(0, 'BqfPreviewRange')  -- Remove kevinhwang91/nvim-bqf Preview Highlight
    utils.reset_highlight_group(0, 'BqfPreviewCursor') -- Remove kevinhwang91/nvim-bqf Preview Highlight
    vim.api.nvim_buf_set_keymap(ev.buf, 'n', '<Esc>', ':ccl | lcl <CR>', { silent = true })
  end,
  desc = "Quickfix Window Specs"
})
