" Call plugins via vim-plug here
" you can either use the github shorthand (as seen w/ 'rafi/awesome-v...'
" or you can write the entire url
call plug#begin('~/.vim/plugs')

Plug 'rafi/awesome-vim-colorschemes'

Plug 'scrooloose/nerdtree'

call plug#end()

" Theme selection ("tender" is a pretty good one)
:colorscheme tender

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

" set tab size to 4
set tabstop=4
set shiftwidth=0

" enable yank-to-clipboard for windows
let s:clip = '/mnt/c/Windows/System32/clip.exe'
if executable(s:clip)
		augroup WSLYank
				autocmd!
				autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
		augroup END
end

map <silent> "=p :r !powershell.exe -Command Get-Clipboard<CR>
map! <silent> <C-r>= :r !powershell.exe -Command Get-Clipboard<CR>

noremap "+p :exe 'norm a'.system('/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -Command Get-Clipboard')<CR>

set clipboard=unnamedplus

" keybinding to link default yank/paste key to system clipboard buffer.
nnoremap y "+y
nnoremap p "+p

" enable folds
set foldmethod=marker
