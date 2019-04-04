execute pathogen#infect()

" reload file if it has changed outside of Vim
set autoread

syntax on

set nocompatible
filetype plugin on

colorscheme apprentice

set softtabstop=2
set shiftwidth=2
set expandtab

set autoindent
set smartindent

" mappings for window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

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
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" set the default fonts
set guifont=Menlo-Regular:h14
