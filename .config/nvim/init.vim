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

call plug#end()			

" ==================== NERD TREE ==================

" Toggle nerd tree by using Ctrl + n
nmap <C-n> :NERDTreeToggle<CR>


let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" ==================== LIGHT LINE ==================


" ==================== OTHER CONFIG ==================
set background=dark
colorscheme hybrid
set number
set tabstop=4
:se cursorline
