" (_)_ __ (_) |___   _(_)_ __ ___  
" | | '_ \| | __\ \ / / | '_ ` _ \ 
" | | | | | | |_ \ V /| | | | | | |
" |_|_| |_|_|\__(_)_/ |_|_| |_| |_|
 
" ==================== VIM PLUG ==================

call plug#begin('~/.vim/plugged')

" NerdTree
Plug 'scrooloose/nerdTree'

" Light Line
Plug 'itchyny/lightline.vim'

" Nord theme
Plug 'w0ng/vim-hybrid'

" Vim Fugitive
Plug 'tpope/vim-fugitive'

call plug#end()			

" ==================== NERD TREE ==================

" Toggle nerd tree by using Ctrl + n
nmap <C-n> :NERDTreeToggle<CR>

" Set nerd tree's icons
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" ==================== LIGHT LINE ==================
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'default',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" ==================== OTHER CONFIG ==================
set background=dark
colorscheme hybrid
set number
set tabstop=4
:se cursorline
syntax on
