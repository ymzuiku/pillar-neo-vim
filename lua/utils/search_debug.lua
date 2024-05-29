-- lua/utils/grep_git_status.lua

local M = {}

local builtin = require('telescope.builtin')

_G.search_debug = function()
  builtin.live_grep({ default_text = "--debug-" })
end

return M
