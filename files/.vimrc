""
"" ~/.vimrc for dotfiles
""
"" Made by Tanguy GEROME
""         <kapnoc@memeware.net>
""
"" Started on  Tue Aug 22 11:34:28 2017 Tanguy GEROME
"" Last update Tue Apr 17 16:42:40 2018 Tanguy Gérôme
""

" Plug plugins list
call plug#begin('~/.vim/plugged')

"Plug 'rhysd/vim-grammarous'

"Plug 'sickill/vim-monokai'
"Plug 'sjl/badwolf'
Plug 'w0ng/vim-hybrid'
Plug 'justinmk/vim-syntax-extra'
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

" completion
if has('nvim')
	Plug 'roxma/nvim-completion-manager'
	Plug 'roxma/ncm-clang'
	Plug 'fgrsnau/ncm-otherbuf'
	Plug 'Shougo/neco-syntax'
	Plug 'Shougo/neoinclude.vim'
	Plug 'Shougo/neco-vim'
	Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
endif



"js
Plug 'jelera/vim-javascript-syntax'

call plug#end()


" misc vim settings
set laststatus=0
set number
set relativenumber
set cursorcolumn
set cursorline
set autoindent
set noexpandtab
set cindent
set tabstop=8
set shiftwidth=8
set softtabstop=-1
set copyindent
set complete=".,w,b,u,t,i"
"syntax on
filetype plugin indent on
set modeline
set foldmethod=marker
set undofile
set undodir=~/.vim/undodir
set list
match ErrorMsg '\s\+$'
set listchars=tab:\|·,eol:¬,nbsp:‡,trail:•,extends:>,precedes:<
set showbreak=↪\
set colorcolumn=80
set nohlsearch
set wildmenu

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
highlight Normal ctermbg=none
highlight NonText ctermbg=none


" You will need a (script/program/link) that will allow you to
" test what you are doing for this shortcut to work
nnoremap <Leader>t :call jobstart("./test")<CR>


" screw Ctrl
"nmap <Leader>x :NERDTreeToggle<CR>
nmap <Leader>x :Vexplore<CR>
nmap <Leader>c :TagbarToggle<CR>
nmap <Leader>w <C-w>


" highlight last inserted text
nnoremap gV `[v`]

inoremap <S-Tab> <esc>

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

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

autocmd BufNewFile,BufReadPost *.scm set lisp
autocmd BufNewFile,BufReadPost *.scm set expandtab
