" Mapping leader to ,
function! myspacevim#before() abort
endfunction

func! myspacevim#after() abort
  let g:mapleader = ','
  let g:vim_json_syntax_conceal = 0
  let g:indentLine_setConceal = 0

  if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
  endif
endf
