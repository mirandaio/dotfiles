execute pathon#infect()

syntax enable
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai

set softtabstop=4
set shiftwidth=4
set expandtab

set autoindent
set smartindent

set ruler

inoremap <c-u> <esc>viw<s-u><esc>ei
nnoremap <c-u> viw<s-u><esc>e

let mapleader = "-"
let maplocalleader = "\\"

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>
nnoremap H 0
nnoremap L $
inoremap jk <esc>
" inoremap <esc> <nop>

nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>

inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

autocmd FileType c setlocal softtabstop=4
autocmd FileType c setlocal shiftwidth=4

autocmd FileType cpp setlocal softtabstop=4
autocmd FileType cpp setlocal shiftwidth=4

autocmd FileType css setlocal softtabstop=2
autocmd FileType css setlocal shiftwidth=2

autocmd FileType eruby setlocal softtabstop=2
autocmd FileType eruby setlocal shiftwidth=2

autocmd FileType html setlocal softtabstop=2
autocmd FileType html setlocal shiftwidth=2

autocmd FileType java setlocal softtabstop=4
autocmd FileType java setlocal shiftwidth=4

autocmd FileType javascript setlocal softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2

autocmd FileType markdown setlocal softtabstop=4
autocmd FileType markdown setlocal shiftwidth=4

autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal shiftwidth=4

autocmd FileType ruby setlocal softtabstop=2
autocmd FileType ruby setlocal softtabstop=2

autocmd FileType tex setlocal softtabstop=2
autocmd FileType tex setlocal shiftwidth=2
