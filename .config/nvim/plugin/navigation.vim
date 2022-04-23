"""""""""""""" splits
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>

let g:kitty_navigator_no_mappings = 1
nnoremap <M-h> :KittyNavigateLeft<cr>
nnoremap <M-j> :KittyNavigateDown<cr>
nnoremap <M-k> :KittyNavigateUp<cr>
nnoremap <M-l> :KittyNavigateRight<cr>

set title
let &titlestring='%t - nvim'

"""""""""""""" tabs
nnoremap th :tabfirst<CR>
nnoremap tj :tabprev<CR>
nnoremap tk :tabnext<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnext<Space>
nnoremap tm :tabm<Space>
nnoremap td :tabclose<CR>


