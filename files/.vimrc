" Plug plugins list
call plug#begin('~/.vim/plugged')

Plug 'w0ng/vim-hybrid'
Plug 'kapnoc/vim-header'
"Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'lilydjwg/colorizer'
Plug 'tpope/vim-surround'
Plug 'jlanzarotta/bufexplorer'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

"js
Plug 'jelera/vim-javascript-syntax'

call plug#end()



" misc vim settings
set number
"set relativenumber
set autoindent
set cindent
syntax on
filetype plugin indent on
set modeline
set modelines=5
set foldmethod=marker
set undofile
set undodir=~/.vim/undodir

" vim-header settings
let g:epi_mode_auto = 1
let g:epi_login = "kapnoc@memeware.net"

" NERDTree vim explorer settings
map <C-x> :NERDTreeToggle<CR>
autocmd VimEnter * :NERDTree
"autocmd BufRead * silent %bd | e# | Vexplore | wincmd w
autocmd VimEnter * wincmd w
"close vim if only NERDTree is opened
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" native vim explorer settings, unused now
let g:netrw_keepdir = 0
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" colorscheme
colorscheme hybrid
set background=dark

" show existing tab with 4 spaces width
autocmd FileType javascript set tabstop=4
" when indenting with '>', use 4 spaces width
autocmd FileType javascript set shiftwidth=4
" On pressing tab, insert 4 spaces
autocmd FileType javascript set expandtab
