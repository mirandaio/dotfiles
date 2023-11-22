return {
  -- Mason is a plugin that is helpful for installing LSP servers, such as
  -- tsserver (typescript-language-server), and avoid issues when you have
  -- different node versions in projects such as when using a version
  -- manager like asdf
  {
    'williamboman/mason.nvim',
    lazy = false,
    config = function()
      require('mason').setup()
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      local on_attach = function()
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer = 0})
      end

      lspconfig.tsserver.setup{
        on_attach = on_attach
      }

      lspconfig.clojure_lsp.setup{
        on_attach = on_attach
      }

      lspconfig.lua_ls.setup{
        on_attach = on_attach,
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' }
            }
          }
        }
      }
    end
  }
}
