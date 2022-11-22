return require('packer').startup(function(use)
  use {
    "ellisonleao/gruvbox.nvim",
    config = function()
      vim.o.background = "dark"
      vim.cmd('colorscheme gruvbox')
    end
  }
end)

