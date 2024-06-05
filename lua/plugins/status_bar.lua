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
vim.o.statusline = '%{v:lua.Mode()}  %{v:lua.GitBranch()}  %f  %h%m%r  (%l/%L)  %P'
