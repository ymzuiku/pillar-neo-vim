" ------------------------
" 前置条件
" ------------------------
" 安装 newvim, lazygit:

" brew install newvim
" brew install jesseduffield/lazygit/lazygit

" 安装 plug 插件:
" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" iTerm 的字体改成 https://www.nerdfonts.com/font-downloads
" 其中, JetBrainsMono Nerd Font 的小字可读性最高
" ------------------------
" 常用热键
" -----------------------
"  针对单词的操作
" 替换单词方法： yiw 先复制单词，viwp再替换另一个单词
" 以下v都可以使用c、d、y来代替以达到不同的效果，vi表示某范围内，va表示某范围内加范围边缘
" vi{ 选中{}中间的内容,不包括{}
" va{ 选中{}中间内容，包括{}
" vi( 选中()中间内容
" vi< 选中<>中间内容
" vi[ 选中[]中间内容
" vit 选中中间的内容
" vi” 选中”"中间内容
" vi’ 选中”中间的内容
" vis 选中一个句子
" vib 选中一个block
" viw选中一个单词
" vip 选中一个段落
" viwP (大写P可以保持剪切板)
"
" vim xxx.md --clean 清除vim的设置, 解决一些特殊问题
"
" guiw 单词改小写
" gUiw 单词改大写

"展开折叠的行：
"
"zo：展开光标所在的折叠。
"zr：展开所有折叠。
"zf: 创建所选行的折叠
"zm：折叠所有内容。
"zE：删除所有折叠记录。

"  -----------------------

" 设置 Leader 键为逗号
let mapleader = " "
" 按下 Esc 两次取消搜索高亮
nnoremap <leader>n :nohlsearch<CR>
nnoremap ga mZggVGy`Zzz
nnoremap q <C-w>

" 创建新 tab
nnoremap to :tabonly<CR>
nnoremap tn :tabnew<CR>
nnoremap t1 :tabnext 1<CR>
nnoremap t2 :tabnext 2<CR>
nnoremap t3 :tabnext 3<CR>
nnoremap t4 :tabnext 4<CR>
nnoremap t5 :tabnext 5<CR>
nnoremap t6 :tabnext 6<CR>
nnoremap t7 :tabnext 7<CR>
nnoremap t8 :tabnext 8<CR>
nnoremap t9 :tabnext 9<CR>

nnoremap tm1 :tabmove 1<CR>
nnoremap tm2 :tabmove 2<CR>
nnoremap tm3 :tabmove 3<CR>
nnoremap tm4 :tabmove 4<CR>
nnoremap tm5 :tabmove 5<CR>
nnoremap tm6 :tabmove 6<CR>
nnoremap tm7 :tabmove 7<CR>
nnoremap tm8 :tabmove 8<CR>
nnoremap tm9 :tabmove 9<CR>


" 将 ; 映射为 :
" nnoremap ; :
" 其他配置
set number
" set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set termguicolors
" 设置光标与顶部和底部的最小行数
set scrolloff=20

" 设置搜索忽略大小写
set ignorecase

" 如果搜索模式包含大写字母，则搜索时区分大小写
set smartcase

" 禁用不必要的文件检查，可以减少切换模式的延迟
set updatetime=200
set noshowmode
set lazyredraw
set ttyfast

" 将 swapfile 存储位置设置为刚
set directory^=$HOME/.config/nvim/swap//

" 离开自动保存
autocmd BufLeave * silent! :wa

" 在外部改建机中，设置 shift+ctrl+8 为 esc， 这样可以很快的退出插入模式
inoremap <C-*> <Esc>

" 初始化 vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" 安装 gruvbox 配色方案
Plug 'morhetz/gruvbox'         " 一款流行且美观的主题
Plug 'joshdick/onedark.vim'    " Atom 的 One Dark 主题
Plug 'gruvbox-community/gruvbox'  " Gruvbox 社区版，持续更新
Plug 'sainnhe/everforest'      " 清新自然的主题
Plug 'marko-cerovac/material.nvim' " Material 主题
Plug 'sainnhe/sonokai'         " Sonokai 主题
Plug 'EdenEast/nightfox.nvim'  " Nightfox 主题
Plug 'altercation/vim-colors-solarized'


" 语法高亮
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


" 安装支持 TypeScript, TSX 的 coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 安装支持 Go 的插件
Plug 'fatih/vim-go'

" 安装 nvim-tree.lua
Plug 'kyazdani42/nvim-tree.lua'


" 安装 copilot.lua
Plug 'github/copilot.vim'

" 基础能力， 书签等等
"Plug 'tpope/vim-obsession'
Plug 'MattesGroeger/vim-bookmarks'

" 安装 copilot.lua
Plug 'zbirenbaum/copilot.lua'

" 安装 telescope.nvim 插件
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-frecency.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-telescope/telescope-z.nvim'
Plug 'tami5/sqlite.lua'
" 使用 vim-abolish 插件与 Telescope 结合来实现替换功能
Plug 'tpope/vim-abolish'
Plug 'nvim-lua/plenary.nvim'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'kdheepak/lazygit.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'hoob3rt/lualine.nvim'
" git-blame 插件可以显示当前文件每一行的 Git 提交信息。
Plug 'APZelos/blamer.nvim'
Plug 'kyazdani42/nvim-web-devicons' " 可选图标支持

" 跳转到单词
Plug 'easymotion/vim-easymotion'


Plug 'mbbill/undotree'

call plug#end()

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
}
EOF

" 设置 gruvbox 配色方案
"syntax enable
"set background=light
"colorscheme solarized
"set background=dark
colorscheme gruvbox
"colorscheme onedark
"colorscheme material

" 设置 coc.nvim 的配色
"highlight CocFloating ctermbg=0 guibg=#1c1c1c
"highlight PmenuSel ctermbg=237 guibg=#3e4452
"highlight Pmenu ctermbg=0 guibg=#1c1c1c guifg=#dcdcdc
" 自定义状态栏颜色
"highlight StatusLine ctermfg=grey ctermbg=darkgrey guifg=#928374 guibg=#3c3836
"highlight StatusLineNC ctermfg=grey ctermbg=darkgrey guifg=#928374 guibg=#3c3836

" 确保 undodir 目录存在

nnoremap <leader>u :UndotreeToggle<CR>


" 启用 git-blame
let g:blamer_enabled = 1

" 设置显示延迟
let g:blamer_delay = 1500
let g:blamer_show_in_insert_modes = 0


" coc.nvim 配置
let g:coc_global_extensions = ['coc-tsserver', 'coc-go', 'coc-eslint', 'coc-prettier']

" vim-go 配置
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" copilot.vim 配置
let g:copilot_no_tab_map = v:true
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")


" gitgutter 配置
let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0  " 禁用默认键绑定

" 显示下一处修改
nmap gj <Plug>(GitGutterNextHunk)

" 显示上一处修改
nmap gk <Plug>(GitGutterPrevHunk)

" 阅览修改细节
nmap <Leader>ghs <Plug>(GitGutterStageHunk)
nmap <Leader>ghr <Plug>(GitGutterUndoHunk)
nmap <Leader>ghp <Plug>(GitGutterPreviewHunk)

" 自动修复保存时的 ESLint 错误
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx :CocCommand eslint.executeAutofix

" 保存时使用 Prettier 格式化
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.json,*.md,*.html,*.css,*.scss,*.yaml,*.yml,*.vue :CocCommand prettier.formatFile

" 保存时对 TypeScript 进行检查
" autocmd BufWritePre *.ts,*.tsx :call CocAction('runCommand', 'tsserver.organizeImports')
" autocmd BufWritePre *.ts,*.tsx :call CocAction('runCommand', 'tsserver.format')


" 快捷键配置，进行 Prettier 格式化、ESLint 检查和 TypeScript 检查
nnoremap <Leader>c :call CocAction('runCommand', 'eslint.executeAutofix')<CR>:CocCommand prettier.formatFile<CR>:call CocAction('runCommand', 'tsserver.organizeImports')<CR>:call CocAction('runCommand', 'tsserver.format')<CR>


" 使用系统剪切板
set clipboard+=unnamedplus
" 自动重新加载配置文件
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 自定义回车键行为以选择 coc.nvim 自动完成提示
inoremap <silent><expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" copilot.vim 配置
let g:copilot_no_tab_map = v:true
" 允许 Tab 键接受 Copilot 补全建议
imap <silent><script><expr> <Tab> copilot#Accept("\<Tab>")

" 自动定位到上次编辑的光标位置
if has("autocmd")
  augroup restore_cursor
    autocmd!
    autocmd BufReadPost *
          \ if line("'\"") > 0 && line("'\"") <= line("$") |
          \   exe "normal! g'\"" |
          \ endif
  augroup END
endif


lua <<EOF
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_tab         = false,
  update_focused_file = {
    enable      = true,
    update_cwd  = false,
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
    cmd  = nil,
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
      quit_on_open = true,
    },
  }
}
EOF

lua <<EOF
require('copilot').setup({
  panel = { 
    enabled = true,
    auto_refresh = false,
    keymap = {
      jump_prev = '[[',
      jump_next = ']]',
      accept = '<CR>',
      refresh = 'gr',
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
    yaml = false,
    markdown = false,
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
EOF

lua <<EOF
local telescope = require('telescope')
local builtin = require('telescope.builtin')
-- 配置 LSP 客户端
local lspconfig = require('lspconfig')

-- 以 tsserver 为例
lspconfig.tsserver.setup {}

telescope.setup {
  defaults = {
    -- 这里可以添加你的默认配置
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
  },
  pickers = {
    -- 这里可以添加你想要自定义的 pickers 配置
    oldfiles = {
      prompt_title = "Recently Edited Files",
      cwd_only = true,
    },
    git_status = {
      prompt_title = "Git Status",
    },
    live_grep = {
      prompt_title = "Live Grep",
      cwd = vim.fn.getcwd(),
    },
    diagnostics = {
      theme = "ivy",
    },
  },
  extensions = {
    -- 这里可以添加扩展配置
    frecency = {
      db_root = vim.fn.stdpath("data") .. "/databases",
      show_scores = false,
      show_unindexed = true,
      ignore_patterns = {"*.git/*", "*/tmp/*", "*/node_modules/*", "*/.venv/*", "*/.vscode/*"}, 
      disable_devicons = false,
        workspaces = {
          ["conf"]    = "/home/user/.config",
          ["data"]    = "/home/user/.local/share",
          ["project"] = "/home/user/projects",
          ["wiki"]    = "/home/user/wiki"
        }
    },
    file_browser = {
      theme = "cursor",
        -- 其他配置选项
    }
  },
}

 -- Load the Telescope Frecency extension
require('telescope').load_extension('frecency')
require('telescope').load_extension('file_browser')
require('telescope').load_extension('z')


function GrepInGitStatus()
  local opts = {}
  local git_status_files = {}
  vim.fn.jobstart({'git', 'status', '--porcelain'}, {
    stdout_buffered = true,
    on_stdout = function(_, data)
      for _, line in ipairs(data) do
        local filepath = line:sub(4)
        if filepath ~= '' then
          table.insert(git_status_files, filepath)
        end
      end
    end,
    on_exit = function()
      builtin.live_grep({
        search_dirs = git_status_files,
        prompt_title = "Search in Git Status Files"
      })
    end,
  })
end

vim.api.nvim_set_keymap('n', '<leader>a', ':lua GrepInGitStatus()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>d', ':Telescope diagnostics<CR>', { noremap = true, silent = false })

-- 自定义搜索函数
function SearchDebug()
  require('telescope.builtin').live_grep({ default_text = "--debug-" })
end

EOF

lua << EOF
-- 需要 Plenary.nvim 来执行系统命令
local Job = require('plenary.job')

-- 定义一个全局函数来打开所有 git status 有变化的文件到标签页
_G.open_git_changed_files_in_tabs = function()
  print("Starting job to get git status...")
  -- 使用 Plenary 的 Job 来执行 git 命令
  Job:new({
    command = 'git',
    args = { 'status', '--porcelain' },
    on_exit = function(j, return_val)
      if return_val == 0 then
        local result = j:result()
        print("Git status result:")
        print(vim.inspect(result))
        -- 解析 git status 的输出，获取有变化的文件列表
        local changed_files = {}
        for _, line in ipairs(result) do
          local filepath = string.match(line, '^[ MARC?]+ (.+)$')
          if filepath then
            table.insert(changed_files, filepath)
          end
        end

        print("Changed files:")
        print(vim.inspect(changed_files))

        -- 在主线程中打开每个变化的文件到新的标签页
        vim.schedule(function()
          local tabs = vim.api.nvim_list_tabpages()
          for _, file in ipairs(changed_files) do
            local file_already_open = false
            for _, tab in ipairs(tabs) do
              local buflist = vim.api.nvim_tabpage_list_wins(tab)
              for _, win in ipairs(buflist) do
                local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(win))
                if bufname == vim.fn.fnamemodify(file, ":p") then
                  file_already_open = true
                  break
                end
              end
              if file_already_open then break end
            end
            if not file_already_open then
              vim.cmd('tabnew ' .. file)
            end
          end
        end)
      else
        print("Failed to get git status")
      end
    end,
  }):start()
end
EOF

" 绑定快捷键来调用函数
nnoremap <leader>w :lua open_git_changed_files_in_tabs()<CR>


" 查找文件
nnoremap <leader>F :lua require('telescope.builtin').find_files()<CR>

" 实时 grep
nnoremap <leader>f :lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>h :lua require('telescope.builtin').resume()<CR>
nnoremap <leader>cz :Telescope z list<CR>

" 列出打开的缓冲区
nnoremap <leader>t :lua require('telescope.builtin').buffers()<CR>

" 查找帮助标签
nnoremap <leader>H :lua require('telescope.builtin').help_tags()<CR>

" 查找 Git 仓库中的文件
nnoremap <leader>p :lua require('telescope.builtin').git_files()<CR>


" 查看 Git 状态（已更改的文件）
nnoremap <leader>s :lua require('telescope.builtin').git_status()<CR>

" 列出 Git 分支
nnoremap <leader>B :lua require('telescope.builtin').git_branches()<CR>

" 列出 Git 提交记录
nnoremap <leader>C :lua require('telescope.builtin').git_commits()<CR>
nnoremap <leader>j :lua require('telescope.builtin').jumplist()<CR>


nnoremap <leader>o :lua require('telescope.builtin').oldfiles({cwd_only = true})<CR>
" 列出最近打开的文件
nnoremap <leader>cf :Telescope frecency<CR>
nnoremap <leader>ce :Telescope file_browser<CR>


nnoremap <leader>cc :lua require('telescope.builtin').colorscheme()<CR>
nnoremap <leader>ck :lua require('telescope.builtin').pickers()<CR>
nnoremap <leader>cqx :lua require('telescope.builtin').quickfix()<CR>
nnoremap <leader>cqh :lua require('telescope.builtin').quickfixhistory()<CR>
nnoremap <leader>cl :lua require('telescope.builtin').loclist()<CR>
nnoremap <leader>cr :lua require('telescope.builtin').registers()<CR>
nnoremap <leader>cs :lua require('telescope.builtin').spell_suggest()<CR>
nnoremap <leader>cf :lua require('telescope.builtin').filetypes()<CR>
nnoremap <leader>ct :lua require('telescope.builtin').tags()<CR>
nnoremap <leader>de :lua SearchDebug()<CR>
nnoremap <leader>d :lua require('telescope.builtin').diagnostics()<CR><ESC>

nnoremap <leader>c? :Telescope 

nnoremap <leader>r :%s/apple/banana/gc

" 定义快捷键打开 nvim-tree
nnoremap <Leader>e :NvimTreeToggle<CR>
"nnoremap <leader>z :LazyGit<CR>
nnoremap <leader>g :LazyGit<CR>


autocmd FileType gitcommit,gitrebase,gitconfig set bufhidden=delete

" 使用 <leader>gd 跳转到定义
nmap gd <Plug>(coc-definition)
" 使用 <leader>gy 跳转到类型定义
nmap gy <Plug>(coc-type-definition)
" 使用 <leader>gi 跳转到实现
nmap gi <Plug>(coc-implementation)
" 使用 <leader>gr 查找引用
nmap gr <Plug>(coc-references)

nmap <leader>cm <Plug>(coc-format-selected)
vmap <leader>cm <Plug>(coc-format-selected)

let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_use_terminal_vim = 1
let g:lazygit_floating_window_scaling_factor = 1 " scaling factor for floating window
let g:lazygit_floating_window_border_chars = ['╭','─', '╮', '│', '╯','─', '╰', '│'] " customize lazygit popup window border characters
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available
let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed
let g:lazygit_use_custom_config_file_path = 1 " config file path is evaluated if this value is 1
let g:lazygit_config_file_path = '/Users/pillar/.config/nvim/lazygit_config.yml' " custom config file path

" 定义一个函数来打开剪切板中的路径
function! OpenClipboardPath()
  " 读取剪切板的内容
  let l:clipboard_path = getreg('+')

  " 去掉路径中的换行符和回车符
  let l:clipboard_path = substitute(l:clipboard_path, '\n', '', 'g')
  let l:clipboard_path = substitute(l:clipboard_path, '\r', '', 'g')

  " 检查路径是否为空
  if l:clipboard_path == ''
    echo "剪切板中没有路径"
    return
  endif

  " 尝试打开剪切板中的路径
  try
    execute 'edit' l:clipboard_path
  catch
    echo "无法打开剪切板中的路径: " . l:clipboard_path
  endtry
endfunction


" 为函数定义一个快捷键，例如 <leader>O, 配合 lazygit 的 ctrl+o 复制路径, 可以快速打开剪切板中的路径
nnoremap <leader>cp :call OpenClipboardPath()<CR>

" 你可以添加更多的映射以适应你的需求
map s <Plug>(easymotion-s2)

function! ReopenCukrentBuffer()
  execute 'edit'
endfunction

nnoremap <leader>R :source $MYVIMRC<CR>:call ReopenCukrentBuffer()<CR>

"if has('nvim')
"  if empty($NVIM_LISTEN_ADDRESS)
"    let $NVIM_LISTEN_ADDRESS = '/tmp/nvim-' . getpid()
"    call serverstart($NVIM_LISTEN_ADDRESS)
"  endif
"endif


" 自动打开 nvim-tree
" autocmd VimEnter * NvimTreeOpen



" 在 init.vim 文件中加载 packer.nvim
" 安装 lazygit.nvim 插件并配置延迟加载
lua << EOF
  vim.cmd [[packadd packer.nvim]]
  return require('packer').startup(function()
    use {
      'kdheepak/lazygit.nvim',
      cmd = 'LazyGit',
      config = function()
        vim.g.lazygit_floating_window_use_plenary = 0  -- 如果你不需要 plenary.nvim，禁用它
      end
    }
    -- 其他插件
  end)
EOF


" 配置 lualine
lua <<EOF
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
      {
        'buffers',
        show_filename_only = false, -- 设置为 false 以显示相对路径
        show_modified_status = true, -- 显示修改状态
        symbols = { modified = ' ●', alternate_file = '', directory = '' },
      }
    },
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
EOF

" 配置 gitsigns
lua <<EOF
require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitGutterAdd'   , text = '┃', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitGutterChange', text = '┃', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitGutterDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitGutterDeleteChange', text = '‾', numhl='GitSignsDeleteChangeNr', linehl='GitSignsDeleteChangeLn'},
    changedelete = {hl = 'GitGutterChangeDelete', text = '~', numhl='GitSignsChangeDeleteNr', linehl='GitSignsChangeDeleteLn'},
  },
  numhl = false,
  linehl = false,
  sign_priority = 6,
  status_formatter = nil, -- Use default
}
EOF


function! OpenProjectRootInVSCode()
    " 获取当前文件的绝对路径
    let l:current_file = expand('%:p')

    " 查找 Git 根目录
    let l:git_root = systemlist('git -C ' . expand('%:p:h') . ' rev-parse --show-toplevel')[0]

    " 检查是否成功找到 Git 根目录
    if v:shell_error
        " 如果不是 Git 仓库，使用 VSCode 打开当前文件的目录
        let l:file_dir = expand('%:p:h')
        execute 'silent !code ' . l:file_dir
    else
        " 使用 VSCode 打开 Git 根目录
        execute 'silent !code ' . l:git_root
    endif
endfunction

" 使用 vscode 打开当前目录
nnoremap <leader>vs :call OpenProjectRootInVSCode()<CR>



" mark --------------------------

" Finds the Git super-project directory.
function! g:BMWorkDirFileLocation()
    let filename = 'bookmarks'
    let location = ''
    if isdirectory('.git')
        " Current work dir is git's work tree
        let location = getcwd().'/.git'
    else
        " Look upwards (at parents) for a directory named '.git'
        let location = finddir('.git', '.;')
    endif
    if len(location) > 0
        return location.'/'.filename
    else
        return getcwd().'/.'.filename
    endif
endfunction

" Finds the Git super-project directory based on the file passed as an argument.
function! g:BMBufferFileLocation(file)
    let filename = 'vim-bookmarks'
    let location = ''
    if isdirectory(fnamemodify(a:file, ":p:h").'/.git')
        " Current work dir is git's work tree
        let location = fnamemodify(a:file, ":p:h").'/.git'
    else
        " Look upwards (at parents) for a directory named '.git'
        let location = finddir('.git', fnamemodify(a:file, ":p:h").'/.;')
    endif
    if len(location) > 0
        return simplify(location.'/.'.filename)
    else
        return simplify(fnamemodify(a:file, ":p:h").'/.'.filename)
    endif
endfunction

let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1

let g:bookmark_auto_close = 1
" 覆盖 bookmark 的清除功能, 不然不小心就把书签清除了
nnoremap mx :BookmarkShowAll<CR>
nnoremap mc :BookmarkShowAll<CR>
" 如何避免与 Nerdtree 插件的键绑定冲突
let g:bookmark_no_default_key_mappings = 1
function! BookmarkMapKeys()
    nmap mm :BookmarkToggle<CR>
    nmap mi :BookmarkAnnotate<CR>
    nmap mj :BookmarkNext<CR>
    nmap mk :BookmarkPrev<CR>
    nmap ma :BookmarkShowAll<CR>
    nmap mc :BookmarkShowAll<CR>
    nmap mx :BookmarkShowAll<CR>
    nmap mX :BookmarkClearAll<CR>
    nmap mnk :BookmarkMoveUp
    nmap mnj :BookmarkMoveDown
endfunction
function! BookmarkUnmapKeys()
    unmap mm
    unmap mi
    unmap mn
    unmap mp
    unmap ma
    unmap mc
    unmap mx
    unmap mkk
    unmap mjj
endfunction
autocmd BufEnter * :call BookmarkMapKeys()
autocmd BufEnter NERD_tree_* :call BookmarkUnmapKeys()

" mark end ------------------

" 设置快捷键查看 HEAD~0-9 版本的文件差异
nmap <Leader>0g :Gedit<CR>


nnoremap 0g :Gedit<CR><C-w>o
nnoremap 1g <c-w>o:Gvdiffsplit HEAD~1:%<cr>
nnoremap 2g <c-w>o:Gvdiffsplit HEAD~2:%<cr>
nnoremap 3g <c-w>o:Gvdiffsplit HEAD~3:%<cr>
nnoremap 4g <c-w>o:Gvdiffsplit HEAD~4:%<cr>
nnoremap 5g <c-w>o:Gvdiffsplit HEAD~5:%<cr>
nnoremap 6g <c-w>o:Gvdiffsplit HEAD~6:%<cr>
nnoremap 7g <c-w>o:Gvdiffsplit HEAD~7:%<cr>
nnoremap 8g <c-w>o:Gvdiffsplit HEAD~8:%<cr>
nnoremap 9g <c-w>o:Gvdiffsplit HEAD~9:%<cr>
nnoremap 10g <c-w>o:Gvdiffsplit HEAD~10:%<cr>
nnoremap 11g <c-w>o:Gvdiffsplit HEAD~11:%<cr>
nnoremap 12g <c-w>o:Gvdiffsplit HEAD~12:%<cr>
nnoremap 13g <c-w>o:Gvdiffsplit HEAD~13:%<cr>
nnoremap 14g <c-w>o:Gvdiffsplit HEAD~14:%<cr>
nnoremap 15g <c-w>o:Gvdiffsplit HEAD~15:%<cr>
nnoremap 16g <c-w>o:Gvdiffsplit HEAD~16:%<cr>
nnoremap 17g <c-w>o:Gvdiffsplit HEAD~17:%<cr>
nnoremap 18g <c-w>o:Gvdiffsplit HEAD~18:%<cr>
nnoremap 19g <c-w>o:Gvdiffsplit HEAD~19:%<cr>
nnoremap 20g <c-w>o:Gvdiffsplit HEAD~20:%<cr>

" 自动命令，根据工作目录生成会话文件路径并启动 Obsession
"augroup AutoSession
"  autocmd!
"  autocmd VimEnter * call AutoSessionStart()
"augroup END
"
"function! AutoSessionStart()
"  " 获取当前工作目录名
"  let l:session_dir = expand('~/.config/nvim/sessions')
"  let l:session_name = substitute(getcwd(), '/', '_', 'g') . '.vim'
"  let l:session_file = l:session_dir . '/' . l:session_name
"
"  " 确保会话目录存在
"  if !isdirectory(l:session_dir)
"    call mkdir(l:session_dir, "p")
"  endif
"
"  " 启动 Obsession 并指定会话文件路径
"  execute 'Obsession ' . l:session_file
"endfunction

