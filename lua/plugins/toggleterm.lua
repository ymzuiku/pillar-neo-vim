
require("toggleterm").setup{
  open_mapping = [[<c-j>]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = false,
  shading_factor = 2,
  start_in_insert = true,
  insert_mappings = true,
  terminal_mappings = true,
  persist_size = true,
  direction = 'float',
  close_on_exit = true,
  shell = vim.o.shell,
  float_opts = {
    border = 'curved',
    width = vim.o.columns,
    height = vim.o.lines-10,
    winblend = 0,
  },
}
