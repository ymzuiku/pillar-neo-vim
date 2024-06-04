vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 20
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.updatetime = 200
vim.opt.showmode = false
vim.opt.lazyredraw = true
vim.opt.ttyfast = true
-- 使用系统剪切板
vim.o.clipboard = "unnamedplus"

vim.opt.directory:append('$HOME/.config/nvim/swap//')



-- 颜色主题
vim.cmd('colorscheme habamax')

-- function GitBranch()
--   local handle = io.popen("git branch --show-current 2>/dev/null")
--   local branch = handle:read("*a")
--   handle:close()
--   branch = branch:gsub("\n", "") -- 移除换行符
--   return branch
-- end

function Mode()
  local mode_map = {
    ['n'] = 'NORMAL',
    ['i'] = 'INSERT',
    ['v'] = 'VISUAL',
    ['V'] = 'V-LINE',
    [''] = 'V-BLOCK',
    ['c'] = 'COMMAND',
    ['r'] = 'REPLACE',
    ['t'] = 'TERMINAL',
  }
  local mode = vim.api.nvim_get_mode().mode
  return mode_map[mode] or mode
end

local git_branch = ""

-- Lua 函数获取当前 Git 分支名称
function GitBranch()
  if _G.git_branch == nil then
    local handle = io.popen("git branch --show-current 2>/dev/null")
    local branch = handle:read("*a")
    handle:close()
    branch = branch:gsub("\n", "") -- 移除换行符
    _G.git_branch = branch
  end
  return _G.git_branch
end

-- 自定义 statusline 显示当前文件的总行数、Git 分支名称和当前模式
vim.o.statusline = '%{v:lua.Mode()} %{v:lua.GitBranch()} %f %h%m%r (%l/%L) %P'

-- 移除状态栏的背景色
vim.cmd [[
  highlight StatusLine guifg=#888888 guibg=NONE
  highlight StatusLineNC guifg=#888888 guibg=NONE
]]

-- 离开自动保存
vim.cmd('autocmd BufLeave * silent! :wa')


-- 启用 git-blame
vim.g.blamer_enabled = 1

-- 设置显示延迟
vim.g.blamer_delay = 1500
vim.g.blamer_show_in_insert_modes = 0

-- 全局禁用折叠
vim.o.foldenable = false


-- 保存时使用 LSP 格式化
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = {"*.js", "*.jsx", "*.ts", "*.tsx", "*.json", "*.md", "*.html", "*.css", "*.yaml", "*.yml", "*.vue"},
  callback = function()
    vim.lsp.buf.format({ async = true })
  end,
})


-- 自动重新加载配置文件
-- vim.api.nvim_create_autocmd("BufWritePost", {
--   pattern = vim.fn.expand("$MYVIMRC"),
--   command = "source $MYVIMRC"
-- })

-- 自动定位到上次编辑的光标位置
-- if vim.fn.has("autocmd") == 1 then
--   vim.api.nvim_create_augroup('restore_cursor', { clear = true })
--
--   vim.api.nvim_create_autocmd('BufReadPost', {
--       group = 'restore_cursor',
--       callback = function()
--           local last_position = vim.fn.line("'\"")
--           if last_position > 0 and last_position <= vim.fn.line("$") then
--               vim.cmd("normal! g'\"")
--           end
--       end
--   })
-- end


-- 禁用大文件的语法高亮
-- vim.api.nvim_exec([[
--   augroup LargeFile
--     autocmd!
--     autocmd BufReadPost * if getfsize(expand("%")) > 5000 | syntax off | endif
--   augroup END
-- ]], false)

-- 对于大文件，可以禁用一些不必要的 LSP 功能，如诊断和符号信息
-- vim.api.nvim_exec([[
--   augroup LargeFile
--     autocmd!
--     autocmd BufReadPre * let f=expand("<afile>") | if getfsize(f) > 100*1024
--       \ | set eventignore+=BufRead,BufWinEnter,BufEnter
--       \ | syntax off
--       \ | setlocal noswapfile noundofile
--       \ | set eventignore-=BufRead,BufWinEnter,BufEnter
--       \ | endif
--   augroup END
-- ]], false)
