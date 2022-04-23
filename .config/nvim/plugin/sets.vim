"-settings--------------------------------------------------------------------"

" toggle keeping cursor in middle of screen
set scrolloff=8
nnoremap <leader>s :let &scrolloff=999-&scrolloff<CR>

"enable crosshairs
set cursorline
set cursorcolumn
set encoding=UTF-8
set visualbell
set tabstop=4               " set tab size to 4 + convert tabs to spaces
set shiftwidth=4
set expandtab
set smarttab
set autoindent              " use indentation of prev line
set copyindent
set wildmenu                " enhanced tab-completion for command mode
set wildignorecase
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

