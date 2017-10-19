"   __  __ _ _____ _________
"   \ \ | |_|     V  __/  __|
"    \ \| | | | | | |  | [__
" [_] \___|_|_|_|_|_|  \____|

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
"set line number
set number

set history=50 " keep 50 lines of command line history
set showcmd " display incomplete commands
set incsearch " do incremental searching
"set property
syntax on 
set laststatus=3
set foldmethod=indent
set list listchars=tab:\¦\ 

"set tab configuration
set autoindent
set shiftwidth=2
set expandtab
set softtabstop=2
set tabstop=2
filetype indent on
"set compiler
autocmd FileType perl :compiler perl
autocmd BufNewFile *.sh 0r $HOME/.vim/template/sh-temp
autocmd BufNewFile,BufRead *.tex setf plaintex
autocmd BufNewFile,BufRead *.vh setf verilog

"set vimdiff option
set diffopt=iwhite

"set matchit.vim
" source /usr/share/vim/vim
" 4/macros/matchit.vim


"set neobundle
" source ~/.neobundle
source ~/.dein.vim
source ~/.vim/config/complete.vim

"$HOME If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
" NeoBundleCheck

"set cursorline stronger
set cursorline
hi CursorLine cterm=NONE ctermbg=darkgray guibg=darkgray guifg=white
let g:hybrid_use_Xresources = 1
colorscheme desert

"using watchdogs.vim
let g:quickrun_config = {}
"call watchdogs#setup(g:quickrun_config)
"" for automatic syntax checker
"let g:watchdogs_check_BufWritePost_enable = 1

" using verilog-indent
let b:verilog_indent_modules = 1
let b:verilog_indet_width = 2

" set vhdl indent
let g:vhdl_indent_genportmap = 0

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" "imap <expr><TAB>
" " \ pumvisible() ? "\<C-n>" :
" " \ neosnippet#expandable_or_jumpable() ?
" " \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
  endif


 " Disable AutoComplPop.
 let g:acp_enableAtStartup = 0
 " Use neocomplcache.
 let g:neocomplcache_enable_at_startup = 1
 " Use underbar completion.
 let g:neocomplcache_enable_underbar_completion = 1
 " Set minimum syntax keyword length.
 let g:neocomplcache_min_syntax_length = 3
 let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

 " Use smartcase.
 let g:neocomplcache_enable_smart_case = 1
 " Use camel case completion.
 let g:neocomplcache_enable_camel_case_completion = 1
 " Select with <TAB>
 inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

 let g:neocomplcache_ctags_arguments_list = {
       \ 'perl' : '-R -h ".pm"'
       \ }

 let g:neocomplcache_snippets_dir = "~/.vim/snippets"
 " Define dictionary.
 let g:neocomplcache_dictionary_filetype_lists = {
       \ 'default'    : '',
       \ 'perl'       : $HOME . '/.vim/dict/perl.dict'
       \ }

 " Define keyword.
 if !exists('g:neocomplcache_keyword_patterns')
   let g:neocomplcache_keyword_patterns = {}
 endif
 let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

 " " for snippets
 " imap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ?
 " "\<Plug>(neocomplcache_snippets_expand)" : "\<C-n>"
 " smap <C-k> <Plug>(neocomplcache_snippets_expand)

" setting for lightline.vim
"function! MyModified()
"  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
"endfunction
"function! MyFugitive()
"  try
"  if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head') && strlen(fugitive#head())
"  return '↱ ' . fugitive#head()
"  endif
"  catch
"  endtry
"  return ''
"endfunction
"function! MyCurrentTag()
"  return tagbar#currenttag('%s', '')
"endfunction
"let g:lightline = {
"  \ 'colorscheme': 'powerline',
"  \ 'mode_map': {'c': 'NORMAL'},
"  \ 'active': {
"    \   'left': [ ['mode', 'paste'], ['fugitive', 'filename', 'currenttag', 'anzu'] ]
"      \ },
"  \ 'component': {
"    \   'lineinfo': ' %3l:%-2v',
"    \ },
"  \ 'component_function': {
"    \   'fugitive': 'MyFugitive',
"    \   'fileformat': 'MyFileformat',
"    \   'anzu': 'anzu#search_status',
"    \   'currenttag': 'MyCurrentTag',
"    \ }
"  \ }
"
"  
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif

" setting to open file with vertical window
nnoremap gs :vertical wincmd f<CR>

" setting for previm
let g:previm_open_cmd = 'firefox'

" spell check setup
set spellang=en, cjk
