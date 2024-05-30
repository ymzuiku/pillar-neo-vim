require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer can manage itself
  use 'morhetz/gruvbox'
  use 'neovim/nvim-lspconfig'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'fatih/vim-go'
  use 'kyazdani42/nvim-tree.lua'
  use 'github/copilot.vim'
  use 'MattesGroeger/vim-bookmarks'
  use 'zbirenbaum/copilot.lua'
  use 'nvim-telescope/telescope.nvim'
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
  use 'kdheepak/lazygit.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'hoob3rt/lualine.nvim'
  use 'APZelos/blamer.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'easymotion/vim-easymotion'
  use 'mbbill/undotree'
end)


require("plugins.lsp")
require("plugins.bookmarks")
require("plugins.coc")
require("plugins.copilot")
require("plugins.gitsigns")
require("plugins.go")
require("plugins.lazygit")
require("plugins.lualine")
require("plugins.nvim_tree")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.neoclip")
-- require("plugins.nullls")


