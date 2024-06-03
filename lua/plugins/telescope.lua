

-- Telescope 配置
local actions = require('telescope.actions')
require('telescope').setup {
  defaults = {
   mappings = {
      n = {
        ["o"] = actions.select_default, -- 在普通模式下将 'o' 映射为默认选择行为
      },
    },
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
   file_ignore_patterns = { 
      "node_modules" ,
      'disk',
      'build'
    },
  },
  pickers = {
    oldfiles = {
      prompt_title = "Recently Edited Files",
      cwd_only = true,
    },
    git_status = {
      prompt_title = "Git Status",
    },
    live_grep = {
      prompt_title = "Live Grep",
      cwd = vim.fn.getcwd(),
    },
    diagnostics = {
      theme = "ivy",
    },
    git_bcommits = {
      mappings = {
        i = {
          ["<CR>"] = actions.select_vertical,
        },
        n = {
          ["<CR>"] = actions.select_vertical,
        },
      },
    },
  },
}
