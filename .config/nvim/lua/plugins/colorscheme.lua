return {
  {
    'rose-pine/neovim',
    tag = 'v3.0.1',
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
  },
  {
    'folke/tokyonight.nvim',
    tag = 'v3.0.1',
    config = function()
      require('tokyonight').setup({
        styles = {
          comments = { italic = false },
          keywords = { italic = false }
        }
      })
    end
  }
}
