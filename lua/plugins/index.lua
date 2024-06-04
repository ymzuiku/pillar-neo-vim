require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer can manage itself
  use {'morhetz/gruvbox', opt = true}
  use {'neovim/nvim-lspconfig'}
  -- use {'neoclide/coc.nvim'}
  use 'fatih/vim-go'
  -- use 'kyazdani42/nvim-tree.lua'
  use 'github/copilot.vim'
  use 'MattesGroeger/vim-bookmarks'
  use 'zbirenbaum/copilot.lua'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'kkharji/sqlite.lua'
  use {
    'AckslD/nvim-neoclip.lua',
    requires = {
      {'nvim-telescope/telescope.nvim'},
      {'kkharji/sqlite.lua', module = 'sqlite'},
    }
  }
  use 'nvim-lua/plenary.nvim'
  use 'airblade/vim-gitgutter'
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'
  -- use 'hoob3rt/lualine.nvim'
  use 'APZelos/blamer.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'easymotion/vim-easymotion'
  -- use 'mbbill/undotree'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'jose-elias-alvarez/nvim-lsp-ts-utils'
  -- vim内打开终端  
  use 'akinsho/toggleterm.nvim'
end)


require("plugins.lsp")
require("plugins.bookmarks")
-- require("plugins.coc")
require("plugins.copilot")
require("plugins.gitsigns")
require("plugins.go")
-- require("plugins.nvim_tree")
require("plugins.telescope")
require("plugins.neoclip")
require("plugins.toggleterm")

