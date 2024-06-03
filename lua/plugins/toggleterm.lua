
require("toggleterm").setup{
  size = function(term)
    if term.direction == "horizontal" then
      return vim.o.lines-10
    elseif term.direction == "vertical" then
      return vim.o.columns
    end
  end,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  insert_mappings = true,
  terminal_mappings = true,
  persist_size = true,
  direction = 'horizontal',
  close_on_exit = true,
  shell = vim.o.shell,
  float_opts = {
    border = 'curved',
    width = vim.o.columns,
    height = vim.o.lines-10,
    winblend = 3,
  },
}
