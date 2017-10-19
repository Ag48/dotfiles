augroup MyAutoCmd
  autocmd!
augroup END

if has('nvim')
  if dein#tap('deoplete.nvim')
  function! s:deoplete_on_source() abort
    let g:deoplete#enable_at_startup = 1
  endfunction
  execute 'autocmd MyAutoCmd User' 'dein#source#' . g:dein#name 
        \ 'call s:deoplete_on_source()'
endif
endif
