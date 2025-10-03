local M = {}

--- Resets the highlight group for a given namespace id
---@param namespace_id integer The namespace id to use, 0 to a global highlight_group.
---@param highlight_group string The highlight group to reset.
function M.reset_highlight_group(namespace_id, highlight_group)
    vim.api.nvim_set_hl(namespace_id, highlight_group, {})
end

return M
