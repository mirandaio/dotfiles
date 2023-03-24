--[[ Unbind some useless/annoying default key bindings.
 'Q' in normal mode enters Ex mode. You almost never want this.
]]
vim.api.nvim_set_keymap("n", "Q", "<Nop>", { noremap = false })

--[[ Jump to start and end of line using the home row keys.
 The default behaviour of H and L is to move to the top of the screen
 and bottom of the screen respectively, which I don't find that useful.
]]
vim.api.nvim_set_keymap("n", "H", "^", { noremap = true })
vim.api.nvim_set_keymap("n", "L", "$", { noremap = true })

-- mappings for window navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true })

-- mapping for closing all windows except current
vim.api.nvim_set_keymap("n", "<C-m>", "<C-w>o", { noremap = true })

--[[ This is to fix the issue where if your current split is Netrw, you
 can't change to a split to the right using the <C-l> mappint
 https://stackoverflow.com/a/33351897/1052946
]]
vim.api.nvim_set_keymap("n", "<C-r>", "<Plug>NetrwRefresh", { noremap = false, unique = true })

-- disable arrow keys
vim.api.nvim_set_keymap("i", "<Up>", "<nop>", { noremap = true })
vim.api.nvim_set_keymap("i", "<Down>", "<nop>", { noremap = true })
vim.api.nvim_set_keymap("i", "<Left>", "<nop>", { noremap = true })
vim.api.nvim_set_keymap("i", "<Right>", "<nop>", { noremap = true })

vim.api.nvim_set_keymap("n", "<Up>", "<nop>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Down>", "<nop>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Left>", "<nop>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Right>", "<nop>", { noremap = true })

-- display Netrw on a vertical split
vim.api.nvim_set_keymap('n', '<leader>pv', ':Vex<CR>', { noremap = true })

-- move to next item in the tag stack. Useful when navigating with go to definition
vim.keymap.set('n', '<C-y>', ':ta<CR>', {})

-- Telescope mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- mapping to be able to find ignored files such as .env files
vim.keymap.set('n', '<leader>fe', function()
  builtin.find_files({
    hidden = true,
    no_ignore = true,
    file_ignore_patterns = { 'node_modules/', '.git/' }
  })
end, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>fi', builtin.lsp_incoming_calls, {})
vim.keymap.set('n', '<leader>fo', builtin.lsp_outgoing_calls, {})
