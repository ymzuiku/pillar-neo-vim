-- Telescope 配置
require('telescope').setup {
  defaults = {
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
  },
}
