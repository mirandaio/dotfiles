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

vim.api.nvim_set_keymap('n', '<leader>pv', ':Vex<CR>', { noremap = true })
