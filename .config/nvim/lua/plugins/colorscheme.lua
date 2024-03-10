return {
  {
    'rose-pine/neovim',
    priority = 1000,
    name = 'rose-pine',
    init = function()
      require('rose-pine').setup({
        styles = {
          italic = false
        }
      })
      vim.cmd.colorscheme('rose-pine')
    end
  }
}
