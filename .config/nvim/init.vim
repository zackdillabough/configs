let g:python3_host_prog = '/home/napkin/.config/anaconda3/envs/neovim/bin/python3'

"-plugins---------------------------------------------------------------------"

call plug#begin('~/.vim/plugs')

"Plug 'sunaku/tmux-navigate'             " tmux navigation integration
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
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'knubie/vim-kitty-navigator'

call plug#end()

" Define Leader key
nnoremap <Space> <NOP>
let mapleader = " "
let maplocalleader = " "

" keybinding to link default yank/paste key to system clipboard buffer.
nnoremap y "+y
nnoremap p "+p

" save/reload vimrc 
nmap <silent> <leader>ev :edit $MYVIMRC<CR>
nmap <silent> <leader>sv :source $MYVIMRC<CR>

" Enable block-commenting via NerdComment
nnoremap <Leader>c :call nerdcommenter#Comment(0,"toggle")<CR>
vnoremap <Leader>c :call nerdcommenter#Comment(0,"toggle")<CR>

" nvim lsp oriented settings

source ./plugin/sets.vim
source ./plugin/colors.vim
source ./plugin/nerdtree.vim
source ./plugin/nvimgdb.vim
source ./plugin/vimtex.vim
source ./plugin/completion.vim
source ./plugin/navigation.vim
lua require('lsp_config')
lua require('spacemacs_bar')


