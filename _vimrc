call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'

call plug#end()

syntax on
filetype plugin indent on

set background=dark
set colorcolumn=80
set cpt-=t
set cursorline
set expandtab
set fillchars=
set formatoptions+=rn
set formatoptions-=t
set hlsearch
set ignorecase
set isfname-=:
set list listchars=tab:»»,trail:·
set modelines=1
set mouse-=a
set nobackup
set noerrorbells
set nospell
set noswapfile
set novisualbell
set numberwidth=4
set relativenumber
set shiftwidth=2
set smartcase
set smartindent
set splitbelow
set splitright
set tabstop=2
set textwidth=80
set wildignore+=*/tmp/*,*.so,*.o
let g:netrw_dirhistmax=0

let g:solarized_termtrans=1
colorscheme solarized

autocmd Filetype gitcommit setlocal textwidth=72
autocmd Filetype gitcommit,markdown setlocal spell
