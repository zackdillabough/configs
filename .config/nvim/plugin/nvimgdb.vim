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

