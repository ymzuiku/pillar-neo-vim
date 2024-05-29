_G.open_project_root_in_vscode = function()
  local current_file = vim.fn.expand('%:p')
  local git_root = vim.fn.systemlist('git -C ' .. vim.fn.expand('%:p:h') .. ' rev-parse --show-toplevel')[1]
  if vim.v.shell_error ~= 0 then
    local file_dir = vim.fn.expand('%:p:h')
    vim.fn.system('code ' .. file_dir)
  else
    vim.fn.system('code ' .. git_root)
  end
end