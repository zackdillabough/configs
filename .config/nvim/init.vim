
"-plugins---------------------------------------------------------------------"

call plug#begin('~/.vim/plugs')

Plug 'scrooloose/nerdcommenter'         " Block commenting
Plug 'rafi/awesome-vim-colorschemes'    " Colorschemes
Plug 'scrooloose/nerdtree'              " Filetree sidebar
Plug 'dylanaraps/wal'                   " Uses wal functionality to generate vim colorschemes (colorscheme 'wal')
Plug 'easymotion/vim-easymotion'        " Use double-leader + motion (or s for 'search') to jump around
Plug 'ying17zi/vim-live-latex-preview'  " auto-compile/update latex to pdf
Plug 'jiangmiao/auto-pairs'             " auto-closing parens,brackets,etc
"Plug 'junegunn/fzf'                     " fuzzy search
call plug#end()


" Theme selection 
" "wal" uses pywal - pretty nifty
" "hybrid" a darker, more contrasted tender
" "tender" is a pretty good one
" "two-firewatch" black/blue/some magenta - dark, toned down + nice
" "onedark" gray/magenta/blue/green - pretty aight!
" "space-vim-dark" - red/blue/gray - i like it
" "anderson" is black/blue - kinda dark
" "dracula" similar to anderson, but more contrast
" "one" black/magenta/purple - pretty aight
" "afterglow" black/gray/purple - is aight!
" "deus" gray/orange - is aight!
" "gruvbox" gray/light-orange/orange - kinda nice
" "happy_hacking" very similar to jetbrains

color hybrid

"-key mappings--------------------------------------------------------------------"

" Define Leader key
nnoremap <Space> <NOP>
let mapleader = " "

let maplocalleader = " "

" Navigate vim splits w/ " "
nnoremap <Leader>j <C-W><C-J> " figure out how to hold space while navigating
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>

" keybinding to link default yank/paste key to system clipboard buffer.
nnoremap y "+y
nnoremap p "+p

" save/reload vimrc 
nmap <silent> <leader>ev :vsplit $MYVIMRC<CR>
nmap <silent> <leader>sv :source $MYVIMRC<CR>

" Enable block-commenting via NerdComment
nnoremap <Leader>c :call NERDComment(0,"toggle")<CR>
vnoremap <Leader>c :call NERDComment(0,"toggle")<CR>

" Navigate vim splits w/ CTRL
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

" Toggle NERDTree
map <Leader>n :NERDTreeToggle<CR>

" Auto-expand
"source ~/.vim/plugin/icr.vim
"autocmd FileType c inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-r>=icr#ICR()\<CR>"
"autocmd FileType cpp inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-r>=icr#ICR()\<CR>"
"autocmd FileType java inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-r>=icr#ICR()\<CR>"

"-settings--------------------------------------------------------------------"

set tabstop=4               " set tab size to 4 + convert tabs to spaces
set shiftwidth=4
set expandtab
set smarttab
set autoindent              " use indentation of prev line
set copyindent
"set scrolloff=999           " keeps cursor in middle of screen
set scrolloff=0          
set wildmenu                " enhanced tab-completion for command mode
set wildignorecase
set wildmode=list:longest,full
set smartindent             " use intelligent indentation for C
set ignorecase              " Case insensitive searches by default
set smartcase               " Override ignorecase if search contains capitals
set clipboard=unnamedplus   " Use clipboard as default register
set hidden                  " Hide buffers instead of closing them
set nowrap                  " Don't wrap lines
set shiftround              " Use multiples of shiftwidth when indenting with '<' and '>'
set showmatch               " Show matching parenthesis
set nohlsearch              " Highlight search results
set incsearch               " Show search matches as you type
set number relativenumber  " set relative numbering in normal mode, absolute numbering in insert mode
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1



filetype plugin on          " Enable filetype plugins

" Point nvim to python path(s)
let g:python3_host_prog = expand('/usr/bin/python3')
let g:python_host_prog = expand('/usr/bin/python2')

