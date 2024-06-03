-- nvim-tree 配置
require('nvim-tree').setup {
  disable_netrw = true,
  hijack_netrw = false,
  open_on_tab = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {}
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  system_open = {
    cmd = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  view = {
    width = 40,
    side = 'right',
    number = false,
    relativenumber = false,
    signcolumn = "yes",
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
  actions = {
    open_file = {
      quit_on_open = false,
    },
  }
}
