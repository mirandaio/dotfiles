return {
  {
    'rose-pine/neovim',
    lazy = false,
    priority = 1000,
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup({
        styles = {
          italic = false
        }
      })
      vim.cmd('colorscheme rose-pine')
    end
  },
  {
    'ellisonleao/gruvbox.nvim',
    config = function()
      require('gruvbox').setup({
        italic = {
          strings = false,
          comments = false,
          foldes = false
        }
      })
    end
  }
}