-- transparency of floating window
vim.g.lazygit_floating_window_winblend = 0

-- use terminal vim for floating window
vim.g.lazygit_floating_window_use_terminal_vim = 1

-- scaling factor for floating window
vim.g.lazygit_floating_window_scaling_factor = 1

-- customize lazygit popup window border characters
vim.g.lazygit_floating_window_border_chars = {'╭','─', '╮', '│', '╯','─', '╰', '│'}

-- use plenary.nvim to manage floating window if available
vim.g.lazygit_floating_window_use_plenary = 0

-- fallback to 0 if neovim-remote is not installed
vim.g.lazygit_use_neovim_remote = 1

-- config file path is evaluated if this value is 1
vim.g.lazygit_use_custom_config_file_path = 1

-- custom config file path
vim.g.lazygit_config_file_path = vim.fn.expand('~/.config/nvim/lazygit_config.yml')
