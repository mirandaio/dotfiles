vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.js',
  command = 'Neoformat'
})
