-- coc.nvim 配置
vim.g.coc_global_extensions = {'coc-tsserver', 'coc-go', 'coc-eslint', 'coc-prettier'}

-- 自定义回车键行为以选择 coc.nvim 自动完成提示
vim.api.nvim_set_keymap('i', '<CR>', 'pumvisible() ? "\\<C-y>" : "\\<CR>"', { expr = true, noremap = true, silent = true })