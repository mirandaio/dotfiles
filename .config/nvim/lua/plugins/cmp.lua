return {
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path'
    },
    config = function()
      local cmp = require'cmp'
      local luasnip = require'luasnip'
      luasnip.config.setup {}

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },

        completion = { completeopt = 'menu,menuone,noinsert' },

        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered()
        },

        mapping = cmp.mapping.preset.insert {
          -- Select the [n]ext item
          ['<C-n>'] = cmp.mapping.select_next_item(),
          -- Select the [p]revious item
          ['<C-p>'] = cmp.mapping.select_prev_item(),
          -- Accept ([y]es) the completion
          ['<C-y>'] = cmp.mapping.confirm { select = true },
          -- Scroll the documentation window [b]ack / [f]orward
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          -- Manually trigger a completion from nvim-cmp.
          -- Generally you don't need this, because nvim-cmp will display
          -- completions whenever it has completion options available.
          ['<C-Space>'] = cmp.mapping.complete()
        },

        sources = {
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'path' }
        },

        formatting = {
          format = function(entry, vim_item)

            vim_item.menu = ({
              nvim_lsp = '[LSP]',
              path = '[path]'
            })[entry.source.name]

            return vim_item
          end
        }
      })
    end
  }
}
