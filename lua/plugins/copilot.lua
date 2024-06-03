-- copilot.vim 配置
vim.g.copilot_no_tab_map = true
-- vim.api.nvim_set_keymap('i', '<C-J>', 'copilot#Accept("\\<CR>")', { noremap = true, silent = true, expr = true })
-- vim.api.nvim_set_keymap('i', '<Tab>', 'copilot#Accept("\\<CR>")', { silent = true, expr = true, script = true })

-- 使用 Tab 键来接受 Copilot 的建议
vim.api.nvim_set_keymap("i", "<Tab>", 'copilot#Accept("<Tab>")', { silent = true, expr = true })
vim.g.copilot_no_tab_map = true

-- CoPilot 配置
require('copilot').setup({
  panel = {
    enabled = true,
    auto_refresh = false,
    keymap = {
      jump_prev = '[[',
      jump_next = ']]',
      accept = '<CR>',
      refresh = 'cr',
      open = '<M-CR>'
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = false,
    debounce = 75,
    keymap = {
      accept = '<M-l>',
      next = '<M-]>',
      prev = '<M-[>',
      dismiss = '<C-]>',
    },
  },
  filetypes = {
    yaml = true,
    markdown = true,
    help = false,
    gitcommit = false,
    gitrebase = false,
    hgcommit = false,
    svn = false,
    cvs = false,
    ["."] = false,
  },
  copilot_node_command = 'node', -- Node.js version must be > 16.x
  server_opts_overrides = {},
})
