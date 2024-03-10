return {
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path'
    },
    config = function()
      local cmp = require'cmp'

      cmp.setup({
        completion = { completeopt = 'menu,menuone,noinsert' },

        mapping = cmp.mapping.preset.insert {
          -- Select the [n]ext item
          ['<C-n>'] = cmp.mapping.select_next_item(),
          -- Select the [p]revious item
          ['<C-p>'] = cmp.mapping.select_prev_item(),
          -- Accept ([y]es) the completion
          ['<C-y>'] = cmp.mapping.confirm { select = true }
        },

        sources = {
          { name = 'nvim_lsp' },
          { name = 'path' }
        }
      })
    end
  }
}
