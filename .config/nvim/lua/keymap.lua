--[[ Unbind some useless/annoying default key bindings.
 'Q' in normal mode enters Ex mode. You almost never want this.
]]
vim.api.nvim_set_keymap("n", "Q", "<Nop>", { noremap = false })

--[[ Jump to first non-white character of line and end of line using the
 home row keys. The default behaviour of H and L is to move to the top of the
 screen and bottom of the screen respectively, which I don't find that useful.
]]
vim.keymap.set({'n', 'x'}, 'H', '^')
vim.keymap.set({'n', 'x'}, 'L', '$')

-- mappings for window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move focus to the right window' })

-- mapping for closing all windows except current
vim.api.nvim_set_keymap("n", "<C-m>", "<C-w>o", { noremap = true })

--[[ This is to fix the issue where if your current split is Netrw, you
 can't change to a split to the right using the <C-l> mappint
 https://stackoverflow.com/a/33351897/1052946
]]
vim.api.nvim_set_keymap("n", "<C-a>", "<Plug>NetrwRefresh", { noremap = false, unique = true })

-- disable pressing space to move cursor
vim.keymap.set({ 'n', 'v' }, '<Space>', '<nop>', { silent = true })

-- disable arrow keys
vim.keymap.set({'i', 'n', 'x'}, '<Up>', '<nop>')
vim.keymap.set({'i', 'n', 'x'}, '<Down>', '<nop>')
vim.keymap.set({'i', 'n', 'x'}, '<Left>', '<nop>')
vim.keymap.set({'i', 'n', 'x'}, '<Right>', '<nop>')

-- display Netrw on a vertical split
vim.api.nvim_set_keymap('n', '<leader>pv', ':Vex<CR>', { noremap = true })

-- move to next item in the tag stack. Useful when navigating with go to definition
vim.keymap.set('n', '<C-y>', ':ta<CR>', {})

-- Remap for dealing with line wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Telescope mappings
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles'})

-- mapping to be able to find ignored files such as .env files
vim.keymap.set('n', '<leader>fe', function()
  builtin.find_files({
    hidden = true,
    no_ignore = true,
    file_ignore_patterns = { 'node_modules/', '.git/' }
  })
end, {})

-- live-grep-args allows you to pass args to ripgrep
-- useful when you want to text search within a specific directory
vim.keymap.set('n',
                '<leader>fg',
                ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
                { desc = '[F]ind by [G]rep' })
vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[F]ind [W]ord under cursor' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[F]ind [B]uffers' })
vim.keymap.set('n', '<leader>fi', builtin.lsp_incoming_calls, {})
vim.keymap.set('n', '<leader>fo', builtin.lsp_outgoing_calls, {})

-- bubble line up and down in normal mode
vim.keymap.set('n', ']e', ':m-2<CR>', {})
vim.keymap.set('n', '[e', ':m+1<CR>', {})

-- bubble selection up and down in visual/selection mode
vim.keymap.set('x', ']e', ':m-2<CR>gv', {})
vim.keymap.set('x', '[e', ":m'>+<CR>gv", {})
