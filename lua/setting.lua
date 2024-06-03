vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 20
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.updatetime = 200
vim.opt.showmode = false
vim.opt.lazyredraw = true
vim.opt.ttyfast = true
-- 使用系统剪切板
vim.o.clipboard = "unnamedplus"

vim.opt.directory:append('$HOME/.config/nvim/swap//')



-- 颜色主题
vim.cmd('colorscheme habamax')

-- 离开自动保存
vim.cmd('autocmd BufLeave * silent! :wa')


-- 启用 git-blame
vim.g.blamer_enabled = 1

-- 设置显示延迟
vim.g.blamer_delay = 1500
vim.g.blamer_show_in_insert_modes = 0


-- 保存时使用 LSP 格式化
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = {"*.js", "*.jsx", "*.ts", "*.tsx", "*.json", "*.md", "*.html", "*.css", "*.yaml", "*.yml", "*.vue"},
  callback = function()
    vim.lsp.buf.format({ async = true })
  end,
})

-- 自动重新加载配置文件
-- vim.api.nvim_create_autocmd("BufWritePost", {
--   pattern = vim.fn.expand("$MYVIMRC"),
--   command = "source $MYVIMRC"
-- })

-- 自动定位到上次编辑的光标位置
if vim.fn.has("autocmd") == 1 then
  vim.api.nvim_create_augroup('restore_cursor', { clear = true })

  vim.api.nvim_create_autocmd('BufReadPost', {
      group = 'restore_cursor',
      callback = function()
          local last_position = vim.fn.line("'\"")
          if last_position > 0 and last_position <= vim.fn.line("$") then
              vim.cmd("normal! g'\"")
          end
      end
  })
end


