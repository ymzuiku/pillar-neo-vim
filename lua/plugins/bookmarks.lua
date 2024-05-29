
-- 覆盖 bookmark 的清除功能, 不然不小心就把书签清除了
vim.api.nvim_set_keymap('n', 'mx', ':BookmarkShowAll<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'mc', ':BookmarkShowAll<CR>', { noremap = true, silent = true })

-- 自定义书签键绑定
local function BookmarkMapKeys()
    vim.api.nvim_set_keymap('n', 'mm', ':BookmarkToggle<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'mi', ':BookmarkAnnotate<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'mj', ':BookmarkNext<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'mk', ':BookmarkPrev<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'ma', ':BookmarkShowAll<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'mc', ':BookmarkShowAll<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'mx', ':BookmarkShowAll<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'mX', ':BookmarkClearAll<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'mnk', ':BookmarkMoveUp', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'mnj', ':BookmarkMoveDown', { noremap = true, silent = true })
end

local function BookmarkUnmapKeys()
    vim.api.nvim_del_keymap('n', 'mm')
    vim.api.nvim_del_keymap('n', 'mi')
    vim.api.nvim_del_keymap('n', 'mn')
    vim.api.nvim_del_keymap('n', 'mp')
    vim.api.nvim_del_keymap('n', 'ma')
    vim.api.nvim_del_keymap('n', 'mc')
    vim.api.nvim_del_keymap('n', 'mx')
    vim.api.nvim_del_keymap('n', 'mkk')
    vim.api.nvim_del_keymap('n', 'mjj')
end

vim.api.nvim_create_autocmd('BufEnter', {
    pattern = '*',
    callback = BookmarkMapKeys
})

vim.api.nvim_create_autocmd('BufEnter', {
    pattern = 'NERD_tree_*',
    callback = BookmarkUnmapKeys
})


vim.g.bookmark_save_per_working_dir = 0
vim.g.bookmark_auto_save = 1
vim.g.bookmark_auto_close = 1
vim.g.bookmark_no_default_key_mappings = 1
vim.g.vim_bookmarks_save_dir = vim.fn.expand('~/.config/nvim/bookmarks/')
