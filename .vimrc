" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

" Call plugins via vim-plug here
" you can either use the github shorthand (as seen w/ 'rafi/awesome-v...'
" or you can write the entire url
call plug#begin('~/.vim/plugs')

Plug 'rafi/awesome-vim-colorschemes'

Plug 'scrooloose/nerdtree'

" Uses wal functionality to generate vim colorschemes (colorscheme 'wal')
Plug 'dylanaraps/wal'

call plug#end()

" Theme selection ("tender" is a pretty good one)
:colorscheme wal
" :colorscheme tender

" Automatically switch to 'relative numbering' when in 'insert mode'
" absolute numbering if else
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Navigate vim splits w/ CTRL
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" set tab size to 4 + convert tabs to spaces
set tabstop=4
set shiftwidth=4
set expandtab

" use indentation of prev line
set autoindent

" use intelligent indentation for C
set smartindent

" Use clipboard as default register
set clipboard=unnamedplus

" keybinding to link default yank/paste key to system clipboard buffer.
nnoremap y "+y
nnoremap p "+p
