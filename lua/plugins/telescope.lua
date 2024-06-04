

-- Telescope 配置

-- 自定义 Telescope 的配色
vim.cmd [[
  highlight TelescopeSelection guibg=#333333
]]


local actions = require('telescope.actions')
local telescope = require('telescope')
telescope.setup {
  defaults = {
    layout_config = {
      height = 0.96, -- 高度占比 (90%)
      width = 0.96, -- 宽度占比 (90%)
    },
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
  extensions = {
    file_browser = {
      -- theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
}

telescope.load_extension('file_browser')




