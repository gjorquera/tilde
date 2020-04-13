call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'

" Integrations
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" Completion
Plug 'ervandew/supertab'

" Interface
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf', { 'do': './install --all --no-bash --no-fish' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tpope/vim-fugitive'

" Language
Plug 'gjorquera/vim-markdown'
Plug 'keith/rspec.vim'
Plug 'keith/swift.vim'
Plug 'mxw/vim-jsx'
Plug 'rhysd/conflict-marker.vim'
Plug 'rust-lang/rust.vim'
Plug 'tfnico/vim-gradle'
Plug 'tpope/vim-liquid'
Plug 'vim-scripts/groovy.vim'

call plug#end()

filetype plugin indent on
syntax enable

" Editing
set encoding=utf-8
set list listchars=tab:»»,trail:·,nbsp:·
set nojoinspaces
set nrformats=bin,octal,hex
set textwidth=80

" Execution
set history=1000

" Indent
set autoindent
set backspace=indent,eol,start
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set tabstop=4

" Integrations
set ttimeout
set ttimeoutlen=100
let g:netrw_dirhistmax = 0

" Interface
set autoread
set colorcolumn=+0
set cursorline
set fillchars+=vert:│
set laststatus=2
set modelines=1
set mouse-=a
set nobackup
set noerrorbells
set noshowmode
set noswapfile
set novisualbell
set numberwidth=4
set relativenumber
set ruler
set splitbelow
set splitright
set showtabline=1

" Search
set hlsearch
set ignorecase
set incsearch
set smartcase

" Auto-Expanding Windows - HAS TO BE AT THE END

set winwidth=84
set winheight=7
set winminheight=7
set winheight=999

set background=dark

let mapleader = "\<Space>"


let g:indentLine_char_list = ['|', '¦', '┆', '┊']

colorscheme gruvbox
let g:lightline = {
  \'colorscheme': 'gruvbox',
\}

let mapleader = "\<Space>"
let g:plug_window = 'CreateModalWindow'
nnoremap <Leader>mc :PlugClean<CR>
nnoremap <Leader>ms :PlugStatus<CR>
nnoremap <Leader>mu :PlugUpdate<CR>
nnoremap <Leader>mg :PlugUpgrade<CR>

function! s:CreateModalWindow()
  let width = min([&columns - 4, 80])
  let height = min([&lines - 4, 30])
  let opts = {
    \'relative': 'editor',
    \'row': ((&lines - height) / 2) - 1,
    \'col': (&columns - width) / 2,
    \'width': width,
    \'height': height,
    \'style': 'minimal',
  \}
  let s:buf = nvim_create_buf(v:false, v:true)
  let s:win = nvim_open_win(s:buf, v:true, opts)
  call nvim_win_set_height(s:win, height)
  set winhl=Normal:Floating
  return s:win
endfunction

command! -nargs=0 -bar -bang CreateModalWindow call s:CreateModalWindow()

" Vim
inoremap jk <ESC>
inoremap <ESC> <NOP>
inoremap <C-C> <NOP>
" SPC v c o: open configuration
nnoremap <Leader>vco :edit $MYVIMRC<CR>
" SPC v c v: open configuration in vsplit
nnoremap <Leader>vcv :vsplit $MYVIMRC<CR>
" SPC v c i: open configuration in hsplit
nnoremap <Leader>vci :split $MYVIMRC<CR>
" SPC v c r: reload configuration
nnoremap <Leader>vcr :source $MYVIMRC<CR>
" SPC v d: toggle distraction free mode
nnoremap <Leader>vd :Goyo<CR>
" SPC v p: toggle paste mode
nnoremap <Leader>vp :set paste!<CR>

let g:tex_conceal = ""
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_edit_url_in = 'vsplit'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_math = 1
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_fenced_languages = [
    \'bash=sh',
    \'html',
    \'java',
    \'python',
    \'xml',
\]

let g:VimuxHeight = "30"
let g:VimuxOrientation = "h"

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

" Zettelkasten
nnoremap ,,n :Ag ^# <CR>
nnoremap ,,l :let @" = expand("%")<CR>
