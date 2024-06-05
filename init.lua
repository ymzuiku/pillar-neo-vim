if exists('g:vscode')
    " VSCode extension
else
  require("plugins.index")
  require("utils.index")
  require("plugins.keymap")
  require("utils.keymap")
  require("keymap")
  require("setting")
endif