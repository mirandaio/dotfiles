packloadall

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" reload file if it has changed outside of Vim
set autoread

" Turn on syntax highlighting
syntax on

filetype plugin on

" Disable the default Vim startup message
set shortmess+=I

" Show line numbers
set number

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting until you press enter
set incsearch

" Unbind some useless/annoying default key bindings.
" 'Q' in normal mode enters Ex mode. You almost never want this.
nmap Q <Nop>

" Disable annoying audible bell
set noerrorbells visualbell t_vb=

" set the colorscheme
colorscheme apprentice

" Always show the status line at the bottom, even if you only have one window open
set laststatus=2

set softtabstop=2
set shiftwidth=2
set expandtab

set autoindent
set smartindent

" Jump to start and end of line using the home row keys.
" The default behaviour of H and L is to move to the top of the screen
" and bottom of the screen respectively, which I don't find that useful.
nnoremap H ^
nnoremap L $

" mappings for window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" map jk in insert mode to the escape key
inoremap jk <esc>

" easy expansion of the Active File Directory
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" delete buffer
nnoremap <C-y> :bd<cr>

" disable arrow keys
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" hide .swp files from displaying in netrw
let g:netrw_list_hide= '.*\.swp$'

" vim-prettier format on save
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" set the default font and font size
set guifont=Menlo-Regular:h14
