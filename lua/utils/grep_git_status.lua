local builtin = require('telescope.builtin')

_G.grep_git_status = function()
  local git_status_files = {}
  vim.fn.jobstart({'git', 'status', '--porcelain'}, {
    stdout_buffered = true,
    on_stdout = function(_, data)
      for _, line in ipairs(data) do
        local filepath = line:sub(4)
        if filepath ~= '' then
          table.insert(git_status_files, filepath)
        end
      end
    end,
    on_exit = function()
      builtin.live_grep({
        search_dirs = git_status_files,
        prompt_title = "Search in Git Status Files"
      })
    end,
  })
end
