call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

syntax on
filetype plugin indent on

set background=dark
set colorcolumn=80
set cpt-=t
set cursorline
set backspace=indent,eol,start
set expandtab
set fillchars=
set formatoptions+=rn
set formatoptions-=t
set hlsearch
set ignorecase
set incsearch
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
set rtp+=/usr/local/opt/fzf
set laststatus=2
set shiftwidth=2
set smartcase
set smartindent
set splitbelow
set splitright
set tabstop=2
set textwidth=80
set wildignore+=*/tmp/*,*.so,*.o

let g:netrw_dirhistmax=0

let g:airline_powerline_fonts = 1
let g:solarized_termtrans=1

colorscheme solarized

let mapleader = "\<Space>"

autocmd Filetype gitcommit setlocal textwidth=72
autocmd Filetype gitcommit,markdown setlocal spell

" Git commands
nnoremap <Leader>gb :Gblame<CR>

" Project commands
nnoremap <Leader>pt :NERDTreeToggle<CR>
nnoremap <Leader>pf :FZF<CR>
