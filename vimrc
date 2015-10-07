
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
set laststatus=2
set foldmethod=indent
set list listchars=tab:\¦\ 

"set tab configuration
set autoindent
set shiftwidth=2
set expandtab
set softtabstop=2
set tabstop=2
"set compiler
autocmd FileType perl :compiler perl
autocmd BUfNewFile *.sh 0r $HOME/.vim/template/sh-temp

"set vimdiff option
set diffopt=iwhite


"set color scheme for vimdiff
" highlight DiffAdd    cterm=bold ctermbg=4
" highlight DiffDelete cterm=bold ctermbg=3
" highlight DiffChange cterm=bold ctermbg=9
" highlight DiffText   cterm=bold ctermbg=1

"set matchit.vim
source /usr/share/vim/vim74/macros/matchit.vim


"set neobundle
source ~/.neobundle


NeoBundle 'vim-scripts/twilight'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'git://github.com/tpope/vim-surround.git'
NeoBundle 'qtmplsel.vim'
NeoBundle 'git://github.com/tpope/vim-repeat.git'
NeoBundle 'git://github.com/Shougo/neocomplcache.git'
" NeoBundle 'git://github.com/Shougo/neocomplcache-snippets-complete.git'
NeoBundle 'git://github.com/Shougo/neosnippet.git'
NeoBundle 'git://github.com/Shougo/neosnippet-snippets.git'
NeoBundle 'git://github.com/Shougo/unite.vim.git'
NeoBundle 'git://github.com/Shougo/vimproc.git'
NeoBundle 'git://github.com/Shougo/vimshell.git'
NeoBundle 'thinca/vim-quickrun'
" NeoBundle 'git://github.com/mattn/zencoding-vim.git'
NeoBundle 'git://github.com/mattn/emmet-vim.git'
" NeoBundle 'git://github.com/c9s/perlomni.vim.git'
" NeoBundle 'git://github.com/altercation/vim-colors-solarized.git'
NeoBundle 'git://github.com/Lokaltog/vim-powerline.git'
NeoBundle 'git://github.com/scrooloose/syntastic.git'
NeoBundle 'git://github.com/othree/eregex.vim.git'
"NeoBundle 'L9'
"NeoBundle 'FuzzyFinder'
"NeoBundle 'QuickBuf'
NeoBundle 'git://github.com/thinca/vim-ref.git'
"NeoBundle 'alpaca-tc/auto-pairs'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'osyo-manga/shabadou.vim'
NeoBundle 'osyo-manga/vim-watchdogs'
NeoBundle 'jceb/vim-hier'
NeoBundle 'vimtaku/hl_matchit.vim'
NeoBundle 'hotchpotch/perldoc-vim'



call neobundle#end()

" Required:
filetype plugin indent on

"$HOME If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"set cursorline stronger
set cursorline
hi CursorLine cterm=NONE ctermbg=darkgray guibg=darkgray guifg=white
let g:hybrid_use_Xresources = 1
colorscheme desert

" using watchdogs.vim
let g:quickrun_config = {}
call watchdogs#setup(g:quickrun_config)
"" for automatic syntax checker
let g:watchdogs_check_BufWritePost_enable = 1

" using verilog-indent
let b:verilog_indent_modules = 1
let b:verilog_indet_width = 3

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
 
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: "\<TAB>"
 
" For snippet_complete marker.
if has('conceal')
    set conceallevel=2 concealcursor=i
  endif

" " Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" " Use neocomplcache.
" let g:neocomplcache_enable_at_startup = 1
" " Use underbar completion.
" let g:neocomplcache_enable_underbar_completion = 1
" " Set minimum syntax keyword length.
" let g:neocomplcache_min_syntax_length = 3
" let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
"
" " Use smartcase.
" let g:neocomplcache_enable_smart_case = 1
" " Use camel case completion.
" let g:neocomplcache_enable_camel_case_completion = 1
" " Select with <TAB>
" inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"
" let g:neocomplcache_ctags_arguments_list = {
"       \ 'perl' : '-R -h ".pm"'
"       \ }
"
" let g:neocomplcache_snippets_dir = "~/.vim/snippets"
" " Define dictionary.
" let g:neocomplcache_dictionary_filetype_lists = {
"       \ 'default'    : '',
"       \ 'perl'       : $HOME . '/.vim/dict/perl.dict'
"       \ }
"
" " Define keyword.
" if !exists('g:neocomplcache_keyword_patterns')
"   let g:neocomplcache_keyword_patterns = {}
" endif
" let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
"
" " " for snippets
" " imap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ?
" " "\<Plug>(neocomplcache_snippets_expand)" : "\<C-n>"
" " smap <C-k> <Plug>(neocomplcache_snippets_expand)
"
