require('gruvbox').setup({
  italic = {
    strings = false,
    comments = false,
    folds = false
  }
})

require('rose-pine').setup({
  disable_italics = true
})

vim.cmd('colorscheme rose-pine');
