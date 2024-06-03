-- Leader 键设置为空格
vim.g.mapleader = ' '

-- 常用热键映射
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>n', ':nohlsearch<CR>', opts)
map('n', 'ga', 'mZggVGy`Zzz', opts)
map('n', 'q', '<C-w>', opts)

-- 在外部改建机中，设置 shift+ctrl+8 为 esc， 这样可以很快的退出插入模式
map('i', '<C-*>', '<Esc>', opts)

-- 创建新 tab
map('n', 'to', ':tabonly<CR>', opts)
map('n', 'tn', ':tabnew<CR>', opts)
map('n', 't1', ':tabnext 1<CR>', opts)
map('n', 't2', ':tabnext 2<CR>', opts)
map('n', 't3', ':tabnext 3<CR>', opts)
map('n', 't4', ':tabnext 4<CR>', opts)
map('n', 't5', ':tabnext 5<CR>', opts)
map('n', 't6', ':tabnext 6<CR>', opts)
map('n', 't7', ':tabnext 7<CR>', opts)
map('n', 't8', ':tabnext 8<CR>', opts)
map('n', 't9', ':tabnext 9<CR>', opts)

map('n', 'tm1', ':tabmove 1<CR>', opts)
map('n', 'tm2', ':tabmove 2<CR>', opts)
map('n', 'tm3', ':tabmove 3<CR>', opts)
map('n', 'tm4', ':tabmove 4<CR>', opts)
map('n', 'tm5', ':tabmove 5<CR>', opts)
map('n', 'tm6', ':tabmove 6<CR>', opts)
map('n', 'tm7', ':tabmove 7<CR>', opts)
map('n', 'tm8', ':tabmove 8<CR>', opts)
map('n', 'tm9', ':tabmove 9<CR>', opts)

-- 保存所有文件并重新加载当前会话
map('n', 'qa', ':wa | qa!<CR>', { noremap = true, silent = true })
map('n', 'qe', ':wa | edit<CR>', { noremap = true, silent = true })

-- 在 quickfix 窗口中按 o 键打开文件， quickfix 就是屏幕下半截的小窗口
vim.api.nvim_exec([[
  augroup Quickfix
    autocmd!
    autocmd FileType qf nnoremap <buffer> o <CR>
  augroup END
]], false)
