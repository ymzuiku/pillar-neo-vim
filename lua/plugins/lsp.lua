-- ~/.config/nvim/lua/lsp-config.lua

-- Ensure nvim-lspconfig is installed
local nvim_lsp = require('lspconfig')

local null_ls = require('null-ls')
local ts_utils = require('nvim-lsp-ts-utils')

-- 检查项目根目录是否存在 biome.json 文件
local function has_biome_config()
  local cwd = vim.fn.getcwd()
  return vim.fn.filereadable(cwd .. "/biome.json") == 1
end

-- 自定义 formatter 函数
local function custom_formatter()
  if has_biome_config() then
    return "biome"
  else
    return "prettier"
  end
end

-- 配置 TypeScript LSP 服务器
nvim_lsp.tsserver.setup({
  on_attach = function(client, bufnr)
    local ts_utils_setup = ts_utils.setup({
      -- update_imports_on_move = true, -- 这个选项启用移动文件时自动更新 import 路径
      -- require_confirmation_on_move = false, -- 不需要确认
      isable_commands = false, -- 禁用 ts-utils 命令，如果你自己定义命令
      enable_import_on_completion = true, -- 在补全时自动 import
      import_on_completion_timeout = 5000, -- 补全 import 的超时时间
      enable_formatting = true, -- 启用 tsserver 格式化功能
      formatter = custom_formatter, -- 使用指定的格式化工具（如 prettier）
      update_imports_on_move = true, -- 启用移动文件时自动更新 import 路径
      require_confirmation_on_move = false, -- 不需要确认
      watch_dir = nil, -- 监视特定目录，默认为 nil（监视项目根目录）
      filter_out_diagnostics_by_code = { 80001 }, -- 过滤特定的诊断代码
      filter_out_diagnostics_by_severity = {}, -- 过滤特定的诊断严重性
      auto_inlay_hints = true, -- 自动显示 Inlay Hints
      inlay_hints_highlight = "Comment", -- Inlay Hints 的高亮组
      inlay_hints_priority = 200, -- Inlay Hints 的优先级
      inlay_hints_format = { -- Inlay Hints 的格式化设置
        Type = {},
        Parameter = {},
        Enum = {},
    },
    complete_parens = false, -- 补全括号
    signature_help_in_parens = false, -- 在括号内显示签名帮助
    update_debounce = 200, -- 更新的防抖时间
    always_organize_imports = false, -- 总是组织 import
    })
    ts_utils.setup_client(client)
  end,
   -- 服务器设置
  settings = {
    -- 忽略 node_modules 目录
    tsserver = {
      exclude = { "node_modules" }
    }
  }
})

-- -- 配置 null-ls
null_ls.setup({
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd([[
        augroup LspFormatting
          autocmd! * <buffer>
          autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
        augroup END
      ]])
    end
  end,
})


-- Setup other servers
local servers = {'gopls', 'biome' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end




-- 保存时使用 LSP 格式化
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = {"*.js", "*.jsx", "*.ts", "*.tsx", "*.json", "*.md", "*.html", "*.css", "*.yaml", "*.yml", "*.vue"},
  callback = function()
    vim.lsp.buf.format({ async = true })
  end,
})
