-- ~/.config/nvim/lua/lsp-config.lua

-- Ensure nvim-lspconfig is installed
local nvim_lsp = require('lspconfig')



-- Setup servers
local servers = { 'tsserver', 'gopls', 'biome' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end


-- Configure Biome LSP server
-- nvim_lsp.biome.setup({
--     cmd = { "biome", "lsp" },  -- Ensure the command to start Biome LSP server is correct
--     filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact", "json" },
--     root_dir = nvim_lsp.util.root_pattern("biome.json", ".git"),  -- Adjust based on your project structure
--     settings = {
--         biome = {
--             -- Add any specific settings for Biome here
--         }
--     }
-- })
