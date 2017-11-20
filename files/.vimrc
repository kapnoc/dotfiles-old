""
"" ~/.vimrc for dotfiles
""
"" Made by Tanguy GEROME
""         <kapnoc@memeware.net>
""
"" Started on  Tue Aug 22 11:34:28 2017 Tanguy GEROME
"" Last update Mon Nov 20 10:24:48 2017 Tanguy Gérôme
""

" Plug plugins list
call plug#begin('~/.vim/plugged')

"Plug 'rhysd/vim-grammarous'

Plug 'w0ng/vim-hybrid'
Plug 'kapnoc/vim-project'
"Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
"Plug 'majutsushi/tagbar'
Plug 'lilydjwg/colorizer'
"Plug 'tpope/vim-surround'
"Plug 'jlanzarotta/bufexplorer'
"Plug 'scrooloose/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'takac/vim-hardtime'

"js
Plug 'jelera/vim-javascript-syntax'

call plug#end()


" misc vim settings
set number
set relativenumber
set cursorcolumn
set cursorline
set autoindent
set cindent
syntax on
filetype plugin indent on
set modeline
set foldmethod=marker
set undofile
set undodir=~/.vim/undodir
set list
set listchars=tab:>-
set colorcolumn=80
set nohlsearch

" vim-header settings
let g:header_mail = "kapnoc@memeware.net"
let g:header_name = "Tanguy Gérôme"

" NERDTree vim explorer settings
"autocmd VimEnter * :NERDTree
"autocmd BufRead * silent %bd | e# | Vexplore | wincmd w
"autocmd VimEnter * wincmd w
"close vim if only NERDTree is opened
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" native vim explorer settings, unused now
let g:netrw_keepdir = 0
let g:netrw_banner = 1
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" colorscheme
colorscheme hybrid
set background=dark

" You will need a (script/program/link) that will allow you to
" test what you are doing for this shortcut to work
"
" The space at the end of line is here for nvim to properly refresh
" the screen, do not remove
"nnoremap <Leader>t :silent exec "!./test > /dev/null &"<CR> 
" This next line is MUCH BETTER (at least for me)
nnoremap <Leader>t :call jobstart("./test")<CR>


" screw Ctrl
"nmap <Leader>x :NERDTreeToggle<CR>
nmap <Leader>x :Vexplore<CR>
"nmap <Leader>c :TagbarToggle<CR>
nmap <Leader>w <C-w>


" Allow saving of files as sudo when you forgot to start vim using sudo
cmap w!! w !sudo tee > /dev/null %


"	JS
" show existing tab with 4 spaces width
autocmd FileType javascript set tabstop=4
" when indenting with '>', use 4 spaces width
autocmd FileType javascript set shiftwidth=4
" On pressing tab, insert 4 spaces
autocmd FileType javascript set expandtab

let g:hardtime_allow_different_key = 1
"let g:hardtime_showmsg = 1
let g:hardtime_maxcount = 3
autocmd BufEnter * HardTimeOn
