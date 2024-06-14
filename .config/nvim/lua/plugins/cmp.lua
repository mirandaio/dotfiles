return {
  {
    'hrsh7th/nvim-cmp',
    commit = 'a110e12d0b58eefcf5b771f533fc2cf3050680ac',
    event = 'InsertEnter',
    dependencies = {
      {
        'L3MON4D3/LuaSnip',
        tag = 'v2.3.0'
      },
      {
        'saadparwaiz1/cmp_luasnip',
        commit = '05a9ab28b53f71d1aece421ef32fee2cb857a843'
      },
      {
        'hrsh7th/cmp-nvim-lsp',
        commit = '39e2eda76828d88b773cc27a3f61d2ad782c922d'
      },
      {
        'hrsh7th/cmp-path',
        commit = '91ff86cd9c29299a64f968ebb45846c485725f23'
      }
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
