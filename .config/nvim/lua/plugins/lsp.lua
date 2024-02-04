return {
  -- Mason is a plugin that is helpful for installing LSP servers, such as
  -- tsserver (typescript-language-server), and avoid issues when you have
  -- different node versions in projects such as when using a version
  -- manager like asdf
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      {
        'williamboman/mason.nvim',
        config = function()
          require('mason').setup()
        end
      }
    },
    config = function()
      local lspconfig = require('lspconfig')
      local on_attach = function()
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0, desc = '[G]oto [D]efinition' })
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = 0, desc = '[G]oto [I]mplementation' })
        vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, { buffer = 0, desc = 'Type [D]efinition' })
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0, desc = 'Hover Documentation' })
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
