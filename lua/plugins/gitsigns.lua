-- Gitsigns 配置
require('gitsigns').setup {
  signs = {
    add = {hl = 'GitGutterAdd', text = '┃', numhl='GitSignsAddNr', linehl='GitSignsAddLn'},
    change = {hl = 'GitGutterChange', text = '┃', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete = {hl = 'GitGutterDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete = {hl = 'GitGutterDeleteChange', text = '‾', numhl='GitSignsDeleteChangeNr', linehl='GitSignsDeleteChangeLn'},
    changedelete = {hl = 'GitGutterChangeDelete', text = '~', numhl='GitSignsChangeDeleteNr', linehl='GitSignsChangeDeleteLn'},
  },
  numhl = false,
  linehl = false,
  sign_priority = 6,
  status_formatter = nil, -- Use default
}
