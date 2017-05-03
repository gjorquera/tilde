call plug#begin('~/.vim/plugged')

" Core
Plug 'christoomey/vim-tmux-navigator'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Source Control
Plug 'tpope/vim-fugitive'

" Themes
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
set showtabline=2
set smartcase
set smartindent
set spellfile=$HOME/.vim-spell-en.utf-8.add
set splitbelow
set splitright
set tabstop=2
set textwidth=80
set wildignore+=*/tmp/*,*.so,*.o

set winwidth=84
set winheight=7
set winminheight=7
set winheight=999

let g:netrw_dirhistmax=0

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_buffers = 0

colorscheme NeoSolarized

autocmd Filetype gitcommit setlocal textwidth=72
autocmd Filetype gitcommit,markdown setlocal spell

autocmd Filetype java setlocal ts=4 sts=4 sw=4
autocmd Filetype cfg setlocal ft=dosini ts=4 sts=4 sw=4

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

" Custom shortcuts
let mapleader = "\<Space>"
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gf :BCommits<CR>
nnoremap <Leader>gl :Commits<CR>
nnoremap <Leader>gs :GFiles?<CR>
nnoremap <Leader>md :Goyo<CR>
nnoremap <Leader>pb :Buffers<CR>
nnoremap <Leader>pf :Files<CR>
nnoremap <Leader>ps :Ag<CR>
nnoremap <Leader>pt :NERDTreeToggle<CR>
nnoremap <Leader>pw :Ag <C-R><C-W><CR>
