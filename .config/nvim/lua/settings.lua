-- Disable the default Neovim startup message
vim.cmd('set shortmess+=I')

-- hide netrw's banner
vim.g.netrw_banner = 0

-- show line numbers
vim.opt.number = true

--[[ This enables relative line numbering mode. With both number and
 relativenumber enabled, the current line shows the true line number, while
 all other lines (above and below) are numbered relative to the current line.
 This is useful because you can tell, at a glance, what count is needed to
 jump up or down to a particular line, by {count}k to go up or {count}j to go
 down.
 --]]
-- vim.opt.relativenumber = true

--[[ This setting makes search case-insensitive when all characters in the string
 being searched are lowercase. However, the search becomes case-sensitive if
 it contains any capital letters. This makes searching more convenient.
]]
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Don't keep search terms highlighted
vim.opt.hlsearch = false

-- Enable searching as you type, rather than waiting until you press enter
vim.opt.incsearch = true

vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.autoindent = true
vim.opt.smartindent = true

-- Enable break indent
vim.opt.breakindent = true

-- Disable swapfiles
vim.opt.swapfile = false

-- Show which line the cursor is on
vim.opt.cursorline = true

-- Do not wait until reaching bottom of the screen to start scrolling
vim.opt.scrolloff = 8

-- Do not show the sign column because it was appearing and disappearing
-- when I switched between normal and insert mode
vim.opt.signcolumn = 'no'

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Enable copying and pasting to and from the system clipboard
vim.opt.clipboard = 'unnamedplus'

vim.opt.termguicolors = true

-- Tell Neoformat to use a project-level version of Prettier
vim.g.neoformat_try_node_exe = 1

-- Disable virtual text
vim.diagnostic.config({
  virtual_text = false
})
