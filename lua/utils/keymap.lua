
-- 常用热键映射
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>vs', ':lua _G.open_project_root_in_vscode()<CR>', opts)

-- 设置快捷键调用 GrepInGitStatus
map('n', '<leader>a', ':lua grep_git_status()<CR>', opts)

-- 设置快捷键调用 GrepInGitStatus
map('n', '<leader>D', ':lua search_debug()<CR>', opts)