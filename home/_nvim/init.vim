call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iCyMind/NeoSolarized'

call plug#end()

syntax on
filetype plugin indent on

set background=dark
set backspace=indent,eol,start
set colorcolumn=+1
set cpt-=t
set cursorline
set expandtab
set fillchars+=vert:│
set formatoptions+=rn
set formatoptions-=t
set hlsearch
set ignorecase
set incsearch
set isfname-=:
set laststatus=2
set list listchars=tab:»»,trail:·,nbsp:·
set modelines=1
set mouse-=a
set nobackup
set noerrorbells
set nojoinspaces
set nospell
set noswapfile
set novisualbell
set numberwidth=5
set relativenumber
set rtp+=/usr/local/opt/fzf
set shiftwidth=2
set smartcase
set smartindent
set spellfile=$HOME/.vim-spell-en.utf-8.add
set splitbelow
set splitright
set tabstop=2
set textwidth=80
set wildignore+=*/tmp/*,*.so,*.o

let g:netrw_dirhistmax=0

let g:airline_powerline_fonts = 1

colorscheme NeoSolarized

autocmd Filetype gitcommit setlocal textwidth=72
autocmd Filetype gitcommit,markdown setlocal spell

" Custom shortcuts
let mapleader = "\<Space>"
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>pt :NERDTreeToggle<CR>
nnoremap <Leader>pf :FZF<CR>
