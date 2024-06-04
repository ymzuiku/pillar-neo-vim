
-- 常用热键映射
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- 快捷键映射
map('n', '-', ':Neotree source=filesystem <CR>', {noremap = true, silent = true, nowait = true })

map('n', '<leader>a', ':lua open_git_changed_files_in_tabs()<CR>', opts)
-- map('n', '<leader>g', ':LazyGit<CR>', opts)
map('n', '<C-y>', ':lua open_clipboard_path()<CR>', opts)
map('n', '<leader>L', ':source $MYVIMRC<CR>:lua reopen_current_buffer()<CR>', opts)

-- Telescope 快捷键
map('n', '<leader>P', ':lua require(\'telescope.builtin\').find_files()<CR>', opts)
map('n', '<leader>f', ':lua require(\'telescope.builtin\').live_grep()<CR>', opts)
map('n', '<leader>h', ':lua require(\'telescope.builtin\').resume()<CR>', opts)
map('n', '<leader>b', ':lua require(\'telescope.builtin\').buffers()<CR>', opts)
map('n', '<leader>H', ':lua require(\'telescope.builtin\').help_tags()<CR>', opts)
map('n', '<leader>p', ':lua require(\'telescope.builtin\').git_files()<CR>', opts)
map('n', '<leader>s', ':lua require(\'telescope.builtin\').git_status()<CR>', opts)
-- map('n', '<leader>B', ':lua require(\'telescope.builtin\').git_branches()<CR>', opts)
map('n', '<leader>C', ':lua require(\'telescope.builtin\').git_commits()<CR>', opts)
map('n', '<leader>c', ':lua require(\'telescope.builtin\').git_bcommits()<CR>', opts)
map('n', '<leader>j', ':lua require(\'telescope.builtin\').jumplist()<CR>', opts)
map('n', '<leader>w', ':lua require(\'telescope.builtin\').lsp_workspace_symbols({cwd_only = true})<CR>', opts)
map('n', '<leader>d', ':lua require(\'telescope.builtin\').lsp_document_symbols({cwd_only = true})<CR>', opts)
map('n', '=', ':lua require(\'telescope.builtin\').oldfiles({cwd_only = true})<CR>', opts)
map('n', '<leader>tf', ':Telescope frecency<CR>', opts)
map('n', '<leader>v', ':Telescope neoclip<CR>', opts)
map('n', '<leader>,c', ':lua require(\'telescope.builtin\').colorscheme()<CR>', opts)
map('n', '<leader>,k', ':lua require(\'telescope.builtin\').pickers()<CR>', opts)
map('n', '<leader>,qx', ':lua require(\'telescope.builtin\').quickfix()<CR>', opts)
map('n', '<leader>,qh', ':lua require(\'telescope.builtin\').quickfixhistory()<CR>', opts)
map('n', '<leader>,l', ':lua require(\'telescope.builtin\').loclist()<CR>', opts)
map('n', '<leader>,r', ':lua require(\'telescope.builtin\').registers()<CR>', opts)
map('n', '<leader>,s', ':lua require(\'telescope.builtin\').spell_suggest()<CR>', opts)
map('n', '<leader>,ty', ':lua require(\'telescope.builtin\').filetypes()<CR>', opts)
map('n', '<leader>,t', ':lua require(\'telescope.builtin\').tags()<CR>', opts)
map('n', '<leader>m', ':lua require(\'telescope.builtin\').diagnostics()<CR><ESC>', opts)


-- Coc 快捷键
-- map('n', 'gd', '<Plug>(coc-definition)', { noremap = false })
-- map('n', 'gy', '<Plug>(coc-type-definition)', { noremap = false })
-- map('n', 'gi', '<Plug>(coc-implementation)', { noremap = false })
-- map('n', 'gr', '<Plug>(coc-references)', { noremap = false })
-- map('n', 'cm', '<Plug>(coc-format-selected)', { noremap = false })
-- map('v', 'cm', '<Plug>(coc-format-selected)', { noremap = false })
-- map('n', '<leader>r', '<Plug>(coc-rename)', { noremap = false })
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'gy', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
map('n', 'gm', '<cmd>lua vim.lsp.buf.format()<CR>', opts)
map('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
map('n', '<leader>R', ':%s/apple/banana/gc', { noremap = true })
-- map('n', '<leadeykr>d', ':CocList diagnostics<CR>', opts)
map('n', '<leader>D', ':lua SearchDebug()<CR>', opts)

-- GitGutter 快捷键
map('n', 'gj', '<Plug>(GitGutterNextHunk)', { noremap = false })
map('n', 'gk', '<Plug>(GitGutterPrevHunk)', { noremap = false })
map('n', '<leader>ghs', '<Plug>(GitGutterStageHunk)', { noremap = false })
map('n', '<leader>ghr', '<Plug>(GitGutterUndoHunk)', { noremap = false })
map('n', '<leader>ghp', '<Plug>(GitGutterPreviewHunk)', { noremap = false })

-- LSP 快捷键
-- Go to the next diagnostic
map('n', 'zk', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
map('n', 'zj', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
map('n', '<leader>x', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)


-- easymotion 快捷键
map('n', 's', '<Plug>(easymotion-s2)', { noremap = false })

-- 撤销树
-- map('n', '<leader>u', ':UndotreeToggle<CR>', { noremap = true })

-- Open clipboard path
map('n', '<C-y>', ':lua open_clipboard_path()<CR>', opts)

-- 快捷键映射，重新加载配置
map('n', '<leader>L', ':source $MYVIMRC<CR>:lua reopen_current_buffer()<CR>', opts)



-- 设置快捷键查看 HEAD~0-9 版本的文件差异
map('n', '<Leader>0g', ':Gedit<CR>', { noremap = true, silent = true })

-- 设置快捷键查看特定版本的文件差异
map('n', '0g', ':Gedit<CR><C-w>o', { noremap = true, silent = true })

for i = 1, 40 do
    map('n', i .. 'g', '<c-w>o:Gvdiffsplit HEAD~' .. i .. ':%<cr>', { noremap = true, silent = true })
end


