" Mapping leader to ,
function! myspacevim#before() abort
endfunction

func! myspacevim#after() abort
  let g:mapleader = ','
  let g:vim_json_syntax_conceal = 0
  let g:indentLine_setConceal = 0
endf
