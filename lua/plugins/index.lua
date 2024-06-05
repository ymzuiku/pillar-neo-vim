
require('packer').startup(function(use)
  use 'nathom/filetype.nvim'
  use 'wbthomason/packer.nvim' -- Packer can manage itself
  use {'morhetz/gruvbox', opt = true}
  use {'neovim/nvim-lspconfig'}
  -- use {'neoclide/coc.nvim'}
  use 'fatih/vim-go'
  -- use 'kyazdani42/nvim-tree.lua'
  use {
    "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      requires = { 
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
      }
  }
  use 'github/copilot.vim'
  use 'MattesGroeger/vim-bookmarks'
  use 'zbirenbaum/copilot.lua'
  use 'nvim-telescope/telescope.nvim'
  -- use 'nvim-telescope/telescope-file-browser.nvim'
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
  use {
    "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      requires = { 
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        {
          's1n7ax/nvim-window-picker',
          version = '2.*',
          config = function()
              require 'window-picker'.setup({
                  filter_rules = {
                      include_current_win = false,
                      autoselect_one = true,
                      -- filter using buffer options
                      bo = {
                          -- if the file type is one of following, the window will be ignored
                          filetype = { 'neo-tree', "neo-tree-popup", "notify" },
                          -- if the buffer type is one of following, the window will be ignored
                          buftype = { 'terminal', "quickfix" },
                      },
              },
          })
          end,
        },
      },
      config = function ()
        
      end
  }
end)


require("plugins.lsp")
require("plugins.bookmarks")
require("plugins.copilot")
require("plugins.gitsigns")
require("plugins.go")
require("plugins.neo_tree")
require("plugins.telescope")
require("plugins.neoclip")
require("plugins.toggleterm")
require("plugins.status_bar")

vim.g.did_load_filetypes = 1