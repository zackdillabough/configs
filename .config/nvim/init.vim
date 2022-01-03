"-plugins---------------------------------------------------------------------"

call plug#begin('~/.vim/plugs')

Plug 'sunaku/tmux-navigate'             " tmux navigation integration
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' } " GDB support within nvim
Plug 'scrooloose/nerdcommenter'         " Block commenting
Plug 'rafi/awesome-vim-colorschemes'    " Colorschemes
Plug 'scrooloose/nerdtree'              " Filetree sidebar
Plug 'easymotion/vim-easymotion'        " Use double-leader + motion (or s for 'search') to jump around
"Plug 'ying17zi/vim-live-latex-preview'  " auto-compile/update latex to pdf
Plug 'lervag/vimtex'                    " auto-compile/update latex to pdf (for windows setup)
Plug 'jiangmiao/auto-pairs'             " auto-closing parens,brackets,etc
"Plug 'junegunn/fzf'                     " fuzzy search
Plug 'bronson/vim-crosshairs'           " crosshairs to keep track of cursor
Plug 'neovim/nvim-lspconfig'            " Language server support for nvim 0.5 nightly release 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " parse-tree based syntax highlighting
Plug 'nvim-lua/completion-nvim'         " Auto completion functionality
Plug 'nvim-lua/diagnostic-nvim'
Plug 'onsails/lspkind-nvim'
Plug 'glepnir/galaxyline.nvim', {'branch': 'main'}
"Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

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

"colorscheme tender
"colorscheme onedark
set termguicolors

let g:terminal_color_1 = '#00ff00'
let g:terminal_color_2 = '#00ff00'
let g:terminal_color_3 = '#00ff00'
let g:terminal_color_4 = '#00ff00'
let g:terminal_color_5 = '#00ff00'
let g:terminal_color_6 = '#00ff00'
let g:terminal_color_7 = '#00ff00'
let g:terminal_color_8 = '#00ff00'
let g:terminal_color_9 = '#00ff00'
let g:terminal_color_10 = '#00ff00'
let g:terminal_color_11 = '#00ff00'
let g:terminal_color_12 = '#00ff00'
let g:terminal_color_13 = '#00ff00'
let g:terminal_color_14 = '#00ff00'
let g:terminal_color_15 = '#00ff00'
let g:terminal_color_16 = '#00ff00'

"highlight LineNr ctermfg=Grey

function CheckColor()
    let l:currentColorOpt = 'g:terminal_color_' . g:currentNum
    echo 'let ' . l:currentColorOpt . " = \'#00ff00\'"
    execute 'let' l:currentColorOpt " = \'#00ff00\'"
    let g:currentNum += 1
endfunction

nmap <leader>cc :call CheckColor()<CR>
" let g:ayucolor = 'dark'
" augroup alter_ayu
"   autocmd!
"   autocmd ColorScheme * highlight! link VertSplit Comment
" augroup END
" colorscheme ayu
"-key mappings--------------------------------------------------------------------"

" Define Leader key
nnoremap <Space> <NOP>
let mapleader = " "

let maplocalleader = " "

" Navigate vim splits w/ " "
" figure out how to hold space while navigating
nnoremap <Leader>j <C-W><C-J>
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

" navigate tabs
nnoremap th :tabfirst<CR>
nnoremap tj :tabprev<CR>
nnoremap tk :tabnext<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnext<Space>
nnoremap tm :tabm<Space>
nnoremap td :tabclose<CR>

"-settings--------------------------------------------------------------------"
"
" toggle keeping cursor in middle of screen
set scrolloff=0
nnoremap <leader>s :let &scrolloff=999-&scrolloff<CR>

" Auto-expand
"source ~/.vim/plugin/icr.vim
"autocmd FileType c inoremap <expr> <CR> pumvisible() ? "\<C-y>" :
"\<C-r>=icr#ICR()\<CR>"
"autocmd FileType cpp inoremap <expr> <CR> pumvisible() ? "\<C-y>" :
"\<C-r>=icr#ICR()\<CR>"
"autocmd FileType java inoremap <expr> <CR> pumvisible() ? "\<C-y>" :
"\<C-r>=icr#ICR()\<CR>"

"enable crosshairs
set cursorline              " enable crosshairs
set cursorcolumn            " enable crosshairs
"highlight CursorColumn ctermbg=Black cterm=bold gui=bold
"highlight CursorLine ctermbg=Black cterm=bold gui=bold
" disable in current window with:
" :setlocal nocursorline
" :setlocal nocursorcolumn
" (for global, just use "set" instead of "setlocal"


set encoding=UTF-8
set visualbell
set tabstop=4               " set tab size to 4 + convert tabs to spaces
set shiftwidth=4
set expandtab
set smarttab
set autoindent              " use indentation of prev line
set copyindent
"set scrolloff=0          
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

let g:python3_host_prog = '/home/napkin/.config/anaconda3/envs/neovim/bin/python3'

"-NERD-----------"
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

"-nvim-gdb-----------"
" uncomment to disable
" let g:loaded_nvimgdb = 1

" set custom keymaps for nvim-gdb
function! NvimGdbNoTKeymaps()
tnoremap <silent> <buffer> <esc> <c-\><c-n>
endfunction

tnoremap <silent> <buffer> <esc> <c-\><c-n>

" let g:nvimgdb_config_override = {
"             \ 'key_next' : 'n',
"             \ 'key_step' : 's',
"             \ 'key_finish' : 'f',
"             \ 'key_continue' : 'c',
"             \ 'key_until' : 'u',
"             \ 'key_breakpoint' : 'b',
"             \ 'set_tkeymaps' : "NvimGdbNoTKeymaps",
"             \ }

" vimtex settings
let g:vimtex_view_general_viewer = 'sumatraPDF'
let g:vimtex_view_general_options = '-reuse-instance @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
let g:tex_flavor = 'lualatex'

"let g:vimtex_compiler_latexmk_engines = 'lualatex'
"let g:vimtex_compiler_latexrun_engines = 'lualatex'


" nvim lsp oriented settings

"""""""""""""""""" auto-completion """""""""""""""""" 

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c


"""""""""""""""""" auto-completion """""""""""""""""" 
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

lua require('lsp_config')
lua require('spacemacs_bar')
