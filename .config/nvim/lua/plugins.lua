return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'williamboman/mason.nvim'

  use 'neovim/nvim-lspconfig'

  use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    -- telescope-live-grep-args allows you to pass args to ripgrep
    -- useful when you want to text search within a specific directory
    requires = { {'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-live-grep-args.nvim'} },
    config = function()
      require('telescope').load_extension('live_grep_args')
    end
  }

  use 'sbdchd/neoformat'

  use 'ellisonleao/gruvbox.nvim'

  use({
    'rose-pine/neovim',
    as = 'rose-pine'
  })
end)

