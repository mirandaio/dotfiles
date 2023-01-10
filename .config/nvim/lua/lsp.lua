require('lspconfig').tsserver.setup{
  
  on_attach = function()
    -- print("hello there!!")
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer = 0})
  end,
  -- filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "typescript.tsx" },
  -- cmd = { "typescript-language-server", "--stdio" }
}
