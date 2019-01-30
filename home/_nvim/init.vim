call plug#begin('~/.vim/plugged')

" Core
Plug 'tpope/vim-sensible'

" Integrations
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" Completion
Plug 'ervandew/supertab'

" Interface
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf', { 'do': './install --all --no-bash --no-fish' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Themes
Plug 'iCyMind/NeoSolarized'

" Language
Plug 'keith/rspec.vim'
Plug 'keith/swift.vim'
Plug 'mxw/vim-jsx'
Plug 'rhysd/conflict-marker.vim'
Plug 'tfnico/vim-gradle'
Plug 'tpope/vim-markdown'
Plug 'vim-scripts/groovy.vim'

call plug#end()

set background=dark
set colorcolumn=+1
set complete-=t
set cursorline
set expandtab
set fillchars+=vert:│
set hlsearch
set ignorecase
set isfname-=:
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
set shiftwidth=2
set showtabline=2
set smartcase
set smartindent
set spellfile=$HOME/.spell/en.utf-8.add
set splitbelow
set splitright
set tabstop=2
set textwidth=80
set wildignore+=*/tmp/*,*.so,*.o

set winwidth=84
set winheight=7
set winminheight=7
set winheight=999

let g:netrw_dirhistmax = 0
let g:neosolarized_termtrans = 1

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_buffers = 0

let g:vim_markdown_conceal = 0
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1

let g:VimuxHeight = "30"
let g:VimuxOrientation = "h"

colorscheme NeoSolarized

augroup custom
  autocmd!

  autocmd VimResized * wincmd =

  autocmd Filetype gitcommit  setlocal textwidth=72 spell
  autocmd Filetype markdown   setlocal spell
  autocmd Filetype java       setlocal shiftwidth=4 softtabstop=4 spell tabstop=4 textwidth=120
  autocmd Filetype kotlin     setlocal shiftwidth=4 softtabstop=4 spell tabstop=4 textwidth=120
  autocmd Filetype cfg        setlocal filetype=dosini shiftwidth=4 softtabstop=4 tabstop=4
augroup END

let mapleader = "\<Space>"

" Git
nnoremap <Leader>gb :Gblame<CR>

" Find
nnoremap <Leader>fl :nohlsearch<CR>

" Project
nnoremap <Leader>pf :Files<CR>
nnoremap <Leader>pl :NERDTreeFind<CR>
nnoremap <Leader>pt :NERDTreeToggle<CR>

" Search
nnoremap <Leader>ss :Ag<CR>
nnoremap <Leader>sw :Ag <C-R><C-W><CR>

" Shell
nnoremap <Leader>rp :VimuxPromptCommand<CR>
nnoremap <Leader>rl :VimuxRunLastCommand<CR>

" Text
nnoremap <Leader>tps vip:sort<CR>
vnoremap <Leader>tws d:execute 'normal a' . join(sort(split(getreg('"'))), ' ')<CR>

" VIM
noremap <C-Q> :w<CR>
inoremap <C-Q> <C-O>:w<CR>
inoremap jk <ESC>
inoremap <ESC> <NOP>
inoremap <C-C> <NOP>
nnoremap <Leader>vo :vsplit $MYVIMRC<CR>
nnoremap <Leader>vp :set paste!<CR>
nnoremap <Leader>vr :source $MYVIMRC<CR>
