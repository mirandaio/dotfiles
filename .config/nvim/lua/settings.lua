--[[ Vim is based on Vi. Setting `nocompatible` switches from the default
 Vi-compatibility mode and enables useful Vim functionality. This
 configuration option turns out not to be necessary for the file named
 '~/.vimrc', because Vim automatically enters nocompatible mode if that file
 is present. But we're including it here just in case this config file is loaded some other way (e.g. saved as `foo`, and then Vim started with
 `vim -u foo`).
 --]]
vim.opt.compatible = false

-- reload file if it has changed outside of neovim
vim.opt.autoread = true

-- Disable the default Neovim startup message
vim.cmd('set shortmess+=I')

-- show line numbers
vim.opt.number = true

--[[ This enables relative line numbering mode. With both number and
 relativenumber enabled, the current line shows the true line number, while
 all other lines (above and below) are numbered relative to the current line.
 This is useful because you can tell, at a glance, what count is needed to
 jump up or down to a particular line, by {count}k to go up or {count}j to go
 down.
 --]]
vim.opt.relativenumber = true

--[[ This setting makes search case-insensitive when all characters in the string
 being searched are lowercase. However, the search becomes case-sensitive if
 it contains any capital letters. This makes searching more convenient.
]]
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable searching as you type, rather than waiting until you press enter
vim.opt.incsearch = true

-- Disable annoying audible bell
vim.cmd('set noerrorbells visualbell t_vb=')

-- Always show the status line at the bottom, even if you only have one window open
vim.opt.laststatus = 2

vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.autoindent = true
vim.opt.smartindent = true

-- Disable swapfiles
vim.opt.swapfile = false

-- Do not wait until reaching bottom of the screen to start scrolling
vim.opt.scrolloff = 8

-- Turn on syntax highlighting
vim.cmd('syntax on')

-- hide netrw's banner
vim.g.netrw_banner = 0

-- set the leader key
vim.g.mapleader = ' '
