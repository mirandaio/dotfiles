-- This plugin is helpful for intalling LSP servers, such as
-- tsserver (typescript-language-server), and avoid issues
-- when you have different node versions in projects such as
-- when using a version manager like asdf
require('mason').setup()

local lspconfig = require('lspconfig')

local on_attach = function()
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer = 0})
end

lspconfig.tsserver.setup{
  on_attach = on_attach
}

lspconfig.sumneko_lua.setup{
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}
