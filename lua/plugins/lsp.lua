-- ~/.config/nvim/lua/lsp-config.lua

-- Ensure nvim-lspconfig is installed
local nvim_lsp = require('lspconfig')



-- Setup servers
local servers = { 'tsserver', 'gopls' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end
