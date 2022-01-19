" Fresh vim installation

" Install Plug if it is not there
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" colors {{{
" set t_Co=256
syntax enable           " enable syntax processing
" color space-vim-dark
" set termguicolors
" hi LineNr ctermbg=NONE guibg=NONE
" }}}

" Spaces & Tabs {{{
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1
filetype indent on
filetype plugin on
set autoindent
" }}}

" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set nocursorline        " highlight current line
set wildmenu
set lazyredraw          " prevent lagging in scroll
set showmatch           " higlight matching parenthesis
set fillchars+=vert:┃
" }}}

" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }}}

" Folding {{{
"=== folding ===
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
set foldlevelstart=10   " start with fold level of 1
" }}}

" Movements {{{
nnoremap B ^
nnoremap E $
" }}}

" airline {{{
let g:airline_theme = 'violet'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
" }}}

" Leader Shortcuts {{{
let maplocalleader=","
" }}}

"Idris related configs {{{
let g:idris_indent_if = 3
let g:idris_indent_case = 5
let g:idris_indent_let = 4
let g:idris_indent_where = 6
let g:idris_indent_do = 3
let g:idris_indent_rewrite = 8
""}}}

" Vim Plug {{{
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'liuchengxu/space-vim-dark'
Plug 'vim-airline/vim-airline-themes'
Plug 'rakr/vim-one'
Plug 'ervandew/supertab'
Plug 'epeli/slimux'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/a.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Raimondi/delimitMate'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jez/vim-c0'
Plug 'jez/vim-ispc'
Plug 'kchmck/vim-coffee-script'
" Highlight and strip trailing whitespace
Plug 'ntpeters/vim-better-whitespace'
Plug 'dense-analysis/ale'
Plug 'jez/vim-better-sml'
Plug 'jpalardy/vim-slime'
Plug 'edwinb/idris2-vim'
Plug 'benmills/vimux'
Plug 'ellisonleao/glow.nvim'
Plug 'ShinKage/nvim-idris2'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.1"}

call plug#end()
" }}}

" This solves the problem of vim colorscheme not working properly when opened
" in tmux
if &term =~ '256color'
  " disable Background Color Erase (BCE)
  set t_ut=
endif

" just testing stuff
" let g:space-vim-dark_termcolor=256
set t_Co=256
colorscheme space-vim-dark
set background=dark
" set termguicolors
set laststatus=2

