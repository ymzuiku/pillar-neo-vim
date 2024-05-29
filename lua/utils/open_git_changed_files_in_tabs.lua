-- 自定义函数
_G.open_git_changed_files_in_tabs = function()
  print("Starting job to get git status...")
  local Job = require('plenary.job')
  Job:new({
    command = 'git',
    args = { 'status', '--porcelain' },
    on_exit = function(j, return_val)
      if return_val == 0 then
        local result = j:result()
        print("Git status result:")
        print(vim.inspect(result))
        local changed_files = {}
        for _, line in ipairs(result) do
          local filepath = string.match(line, '^[ MARC?]+ (.+)$')
          if filepath then
            table.insert(changed_files, filepath)
          end
        end
        print("Changed files:")
        print(vim.inspect(changed_files))
        vim.schedule(function()
          local tabs = vim.api.nvim_list_tabpages()
          for _, file in ipairs(changed_files) do
            local file_already_open = false
            for _, tab in ipairs(tabs) do
              local buflist = vim.api.nvim_tabpage_list_wins(tab)
              for _, win in ipairs(buflist) do
                local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(win))
                if bufname == vim.fn.fnamemodify(file, ":p") then
                  file_already_open = true
                  break
                end
              end
              if file_already_open then break end
            end
            if not file_already_open then
              vim.cmd('tabnew ' .. file)
            end
          end
        end)
      else
        print("Failed to get git status")
      end
    end,
  }):start()
end