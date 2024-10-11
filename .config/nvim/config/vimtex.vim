syntax enable
let g:vimtex_indent_on_ampersands = 0
let g:vimtex_view_method = 'skim'
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_quick_fix_open_on_warning = 0

let g:vimtex_quickfix_ignore_filters = [
      \ 'Underfull \\hbox',
      \ 'Overfull \\hbox',
      \]


function! s:TexFocusVim() abort
  sleep 200m
  silent execute "!open -a iTerm"
  redraw!
endfunction
augroup vimtex_event_focus
  au!
  au User VimtexEventViewReverse call s:TexFocusVim()
  au User VimtexEventView call s:TexFocusVim()
augroup END
