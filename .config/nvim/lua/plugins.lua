return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    "ellisonleao/gruvbox.nvim" ,
    config = function()
      vim.cmd('colorscheme gruvbox')
    end
  }

  use({
    'rose-pine/neovim',
    as = 'rose-pine'
  })
end)

