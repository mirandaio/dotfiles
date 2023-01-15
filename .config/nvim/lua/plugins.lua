return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'williamboman/mason.nvim'

  use 'neovim/nvim-lspconfig'

  use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'sbdchd/neoformat'

  use 'ellisonleao/gruvbox.nvim'

  use({
    'rose-pine/neovim',
    as = 'rose-pine'
  })
end)

